
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_dev {scalar_t__ regs; } ;


 scalar_t__ GSC_SW_RESET ;
 int GSC_SW_RESET_SRESET ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_sw_reset(struct gsc_dev *dev)
{
 writel(GSC_SW_RESET_SRESET, dev->regs + GSC_SW_RESET);
}
