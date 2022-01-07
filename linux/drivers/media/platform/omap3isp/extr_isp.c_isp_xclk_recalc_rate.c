
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_xclk {unsigned long divider; } ;
struct clk_hw {int dummy; } ;


 struct isp_xclk* to_isp_xclk (struct clk_hw*) ;

__attribute__((used)) static unsigned long isp_xclk_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct isp_xclk *xclk = to_isp_xclk(hw);

 return parent_rate / xclk->divider;
}
