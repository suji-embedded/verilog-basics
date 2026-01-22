module adder_4bit_tb;
  reg [3:0] a, b;
  wire [4:0] sum;

  adder_4bit dut(.a(a), .b(b), .sum(sum));

  initial begin
    a = 4'b0000; b = 4'b0000;
    #10 a = 4'b0011; b = 4'b0101;
    #10 a = 4'b1111; b = 4'b0001;
    #10 a = 4'b1000; b = 4'b0111;
    #10 $stop;
  end
endmodule
