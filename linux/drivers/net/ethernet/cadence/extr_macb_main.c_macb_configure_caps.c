
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct macb_config {int caps; } ;
struct macb {int caps; TYPE_1__* pdev; int * ptp_info; int hw_dma_cap; int native_io; int regs; } ;
struct TYPE_2__ {int dev; } ;


 int DCFG1 ;
 int DCFG2 ;
 int DCFG5 ;
 scalar_t__ GEM_BFEXT (int ,int) ;
 int GEM_BIT (int ) ;
 int HW_DMA_CAP_PTP ;
 int IRQCOR ;
 int MACB_CAPS_FIFO_MODE ;
 int MACB_CAPS_ISR_CLEAR_ON_WRITE ;
 int MACB_CAPS_MACB_IS_GEM ;
 int RX_PKT_BUFF ;
 int TSU ;
 int TX_PKT_BUFF ;
 int dev_dbg (int *,char*,int ) ;
 scalar_t__ gem_has_ptp (struct macb*) ;
 int gem_ptp_info ;
 int gem_readl (struct macb*,int ) ;
 scalar_t__ hw_is_gem (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static void macb_configure_caps(struct macb *bp,
    const struct macb_config *dt_conf)
{
 u32 dcfg;

 if (dt_conf)
  bp->caps = dt_conf->caps;

 if (hw_is_gem(bp->regs, bp->native_io)) {
  bp->caps |= MACB_CAPS_MACB_IS_GEM;

  dcfg = gem_readl(bp, DCFG1);
  if (GEM_BFEXT(IRQCOR, dcfg) == 0)
   bp->caps |= MACB_CAPS_ISR_CLEAR_ON_WRITE;
  dcfg = gem_readl(bp, DCFG2);
  if ((dcfg & (GEM_BIT(RX_PKT_BUFF) | GEM_BIT(TX_PKT_BUFF))) == 0)
   bp->caps |= MACB_CAPS_FIFO_MODE;
 }

 dev_dbg(&bp->pdev->dev, "Cadence caps 0x%08x\n", bp->caps);
}
