
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gem {int rx_fifo_sz; int rx_pause_off; int rx_pause_on; int rx_buf_sz; scalar_t__ regs; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ vendor; } ;


 scalar_t__ GREG_CFG ;
 int GREG_CFG_ENBUG2FIX ;
 int GREG_CFG_IBURST ;
 int GREG_CFG_RONPAULBIT ;
 int GREG_CFG_RXDMALIM ;
 int GREG_CFG_TXDMALIM ;
 scalar_t__ PCI_VENDOR_ID_APPLE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gem_init_pause_thresholds(struct gem *gp)
{
        u32 cfg;






 if (gp->rx_fifo_sz <= (2 * 1024)) {
  gp->rx_pause_off = gp->rx_pause_on = gp->rx_fifo_sz;
 } else {
  int max_frame = (gp->rx_buf_sz + 4 + 64) & ~63;
  int off = (gp->rx_fifo_sz - (max_frame * 2));
  int on = off - max_frame;

  gp->rx_pause_off = off;
  gp->rx_pause_on = on;
 }





        cfg = 0;
        if (gp->pdev->vendor == PCI_VENDOR_ID_APPLE)
  cfg |= GREG_CFG_RONPAULBIT | GREG_CFG_ENBUG2FIX;

        cfg |= GREG_CFG_IBURST;

        cfg |= ((31 << 1) & GREG_CFG_TXDMALIM);
        cfg |= ((31 << 6) & GREG_CFG_RXDMALIM);
        writel(cfg, gp->regs + GREG_CFG);




 if (!(readl(gp->regs + GREG_CFG) & GREG_CFG_IBURST)) {
  cfg = ((2 << 1) & GREG_CFG_TXDMALIM);
  cfg |= ((8 << 6) & GREG_CFG_RXDMALIM);
  writel(cfg, gp->regs + GREG_CFG);
 }
}
