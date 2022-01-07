
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_xclk {int isp; } ;
struct clk_hw {int dummy; } ;


 int omap3isp_get (int ) ;
 struct isp_xclk* to_isp_xclk (struct clk_hw*) ;

__attribute__((used)) static int isp_xclk_prepare(struct clk_hw *hw)
{
 struct isp_xclk *xclk = to_isp_xclk(hw);

 omap3isp_get(xclk->isp);

 return 0;
}
