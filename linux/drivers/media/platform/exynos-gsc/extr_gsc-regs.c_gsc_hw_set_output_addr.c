
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_dev {scalar_t__ regs; } ;
struct gsc_addr {int cr; int cb; int y; } ;


 scalar_t__ GSC_OUT_BASE_ADDR_CB (int) ;
 scalar_t__ GSC_OUT_BASE_ADDR_CR (int) ;
 scalar_t__ GSC_OUT_BASE_ADDR_Y (int) ;
 int pr_debug (char*,int,int *,int *,int *) ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_output_addr(struct gsc_dev *dev,
        struct gsc_addr *addr, int index)
{
 pr_debug("dst_buf[%d]: %pad, cb: %pad, cr: %pad",
   index, &addr->y, &addr->cb, &addr->cr);
 writel(addr->y, dev->regs + GSC_OUT_BASE_ADDR_Y(index));
 writel(addr->cb, dev->regs + GSC_OUT_BASE_ADDR_CB(index));
 writel(addr->cr, dev->regs + GSC_OUT_BASE_ADDR_CR(index));
}
