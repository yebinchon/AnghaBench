
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bdisp_dev {scalar_t__ regs; int dev; } ;


 scalar_t__ BLT_ITM0 ;
 scalar_t__ BLT_ITS ;
 int BLT_ITS_AQ1_LNA ;
 int dev_dbg (int ,char*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

int bdisp_hw_get_and_clear_irq(struct bdisp_dev *bdisp)
{
 u32 its;

 its = readl(bdisp->regs + BLT_ITS);


 if (!(its & BLT_ITS_AQ1_LNA)) {
  dev_dbg(bdisp->dev, "Unexpected IT status: 0x%08X\n", its);
  writel(its, bdisp->regs + BLT_ITS);
  return -1;
 }


 writel(its, bdisp->regs + BLT_ITS);
 writel(0, bdisp->regs + BLT_ITM0);

 return 0;
}
