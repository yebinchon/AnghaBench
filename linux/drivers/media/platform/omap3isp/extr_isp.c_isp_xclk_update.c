
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_xclk {int id; int isp; } ;


 int ISPTCTRL_CTRL_DIVA_MASK ;
 int ISPTCTRL_CTRL_DIVA_SHIFT ;
 int ISPTCTRL_CTRL_DIVB_MASK ;
 int ISPTCTRL_CTRL_DIVB_SHIFT ;
 int ISP_TCTRL_CTRL ;


 int OMAP3_ISP_IOMEM_MAIN ;
 int isp_reg_clr_set (int ,int ,int ,int ,int) ;

__attribute__((used)) static void isp_xclk_update(struct isp_xclk *xclk, u32 divider)
{
 switch (xclk->id) {
 case 129:
  isp_reg_clr_set(xclk->isp, OMAP3_ISP_IOMEM_MAIN, ISP_TCTRL_CTRL,
    ISPTCTRL_CTRL_DIVA_MASK,
    divider << ISPTCTRL_CTRL_DIVA_SHIFT);
  break;
 case 128:
  isp_reg_clr_set(xclk->isp, OMAP3_ISP_IOMEM_MAIN, ISP_TCTRL_CTRL,
    ISPTCTRL_CTRL_DIVB_MASK,
    divider << ISPTCTRL_CTRL_DIVB_SHIFT);
  break;
 }
}
