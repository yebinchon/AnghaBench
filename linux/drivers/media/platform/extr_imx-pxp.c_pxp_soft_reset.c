
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxp_dev {scalar_t__ mmio; } ;


 int BM_PXP_CTRL_CLKGATE ;
 int BM_PXP_CTRL_SFTRST ;
 scalar_t__ HW_PXP_CTRL ;
 scalar_t__ HW_PXP_CTRL_CLR ;
 scalar_t__ HW_PXP_CTRL_SET ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pxp_soft_reset(struct pxp_dev *dev)
{
 int ret;
 u32 val;

 writel(BM_PXP_CTRL_SFTRST, dev->mmio + HW_PXP_CTRL_CLR);
 writel(BM_PXP_CTRL_CLKGATE, dev->mmio + HW_PXP_CTRL_CLR);

 writel(BM_PXP_CTRL_SFTRST, dev->mmio + HW_PXP_CTRL_SET);

 ret = readl_poll_timeout(dev->mmio + HW_PXP_CTRL, val,
     val & BM_PXP_CTRL_CLKGATE, 0, 100);
 if (ret < 0)
  return ret;

 writel(BM_PXP_CTRL_SFTRST, dev->mmio + HW_PXP_CTRL_CLR);
 writel(BM_PXP_CTRL_CLKGATE, dev->mmio + HW_PXP_CTRL_CLR);

 return 0;
}
