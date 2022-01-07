
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int isp_xclk_calc_divider (unsigned long*,unsigned long) ;

__attribute__((used)) static long isp_xclk_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *parent_rate)
{
 isp_xclk_calc_divider(&rate, *parent_rate);
 return rate;
}
