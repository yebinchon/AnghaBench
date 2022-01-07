
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLK_TO_DIV_N ;

__attribute__((used)) static int rtl8411_conv_clk_and_div_n(int input, int dir)
{
 int output;

 if (dir == CLK_TO_DIV_N)
  output = input * 4 / 5 - 2;
 else
  output = (input + 2) * 5 / 4;

 return output;
}
