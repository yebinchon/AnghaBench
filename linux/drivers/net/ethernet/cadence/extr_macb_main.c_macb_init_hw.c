
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct macb_queue {int tx_ring_dma; int rx_ring_dma; } ;
struct macb {scalar_t__ phy_interface; int caps; unsigned int num_queues; int hw_dma_cap; int rx_intr_mask; struct macb_queue* queues; int rx_frm_len_mask; int duplex; int speed; scalar_t__ jumbo_max_len; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; int features; } ;


 int BIG ;
 int CAF ;
 int DRFCS ;
 int DUPLEX_HALF ;
 int GEM_BIT (int ) ;
 int HRESP ;
 int HW_DMA_CAP_64B ;
 int IER ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int JFRAME ;
 int JML ;
 int MACB_BF (int ,int ) ;
 int MACB_BIT (int ) ;
 int MACB_CAPS_JUMBO ;
 int MACB_RX_FRMLEN_MASK ;
 int MACB_RX_JFRMLEN_MASK ;
 int MACB_TX_INT_FLAGS ;
 int NBC ;
 int NCFGR ;
 int NCR ;
 int NETIF_F_RXCSUM ;
 int NET_IP_ALIGN ;
 int PAE ;
 int PCSSEL ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int RBOF ;
 int RBQP ;
 int RBQPH ;
 int RE ;
 int RXCOEN ;
 int SGMIIEN ;
 int SPEED_10 ;
 int TBQP ;
 int TBQPH ;
 int TE ;
 int gem_writel (struct macb*,int ,scalar_t__) ;
 int lower_32_bits (int ) ;
 int macb_configure_dma (struct macb*) ;
 int macb_dbw (struct macb*) ;
 scalar_t__ macb_is_gem (struct macb*) ;
 int macb_mdc_clk_div (struct macb*) ;
 int macb_readl (struct macb*,int ) ;
 int macb_reset_hw (struct macb*) ;
 int macb_set_hwaddr (struct macb*) ;
 int macb_writel (struct macb*,int ,int) ;
 int queue_writel (struct macb_queue*,int ,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void macb_init_hw(struct macb *bp)
{
 struct macb_queue *queue;
 unsigned int q;

 u32 config;

 macb_reset_hw(bp);
 macb_set_hwaddr(bp);

 config = macb_mdc_clk_div(bp);
 if (bp->phy_interface == PHY_INTERFACE_MODE_SGMII)
  config |= GEM_BIT(SGMIIEN) | GEM_BIT(PCSSEL);
 config |= MACB_BF(RBOF, NET_IP_ALIGN);
 config |= MACB_BIT(PAE);
 config |= MACB_BIT(DRFCS);
 if (bp->caps & MACB_CAPS_JUMBO)
  config |= MACB_BIT(JFRAME);
 else
  config |= MACB_BIT(BIG);
 if (bp->dev->flags & IFF_PROMISC)
  config |= MACB_BIT(CAF);
 else if (macb_is_gem(bp) && bp->dev->features & NETIF_F_RXCSUM)
  config |= GEM_BIT(RXCOEN);
 if (!(bp->dev->flags & IFF_BROADCAST))
  config |= MACB_BIT(NBC);
 config |= macb_dbw(bp);
 macb_writel(bp, NCFGR, config);
 if ((bp->caps & MACB_CAPS_JUMBO) && bp->jumbo_max_len)
  gem_writel(bp, JML, bp->jumbo_max_len);
 bp->speed = SPEED_10;
 bp->duplex = DUPLEX_HALF;
 bp->rx_frm_len_mask = MACB_RX_FRMLEN_MASK;
 if (bp->caps & MACB_CAPS_JUMBO)
  bp->rx_frm_len_mask = MACB_RX_JFRMLEN_MASK;

 macb_configure_dma(bp);


 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
  queue_writel(queue, RBQP, lower_32_bits(queue->rx_ring_dma));




  queue_writel(queue, TBQP, lower_32_bits(queue->tx_ring_dma));






  queue_writel(queue, IER,
        bp->rx_intr_mask |
        MACB_TX_INT_FLAGS |
        MACB_BIT(HRESP));
 }


 macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(RE) | MACB_BIT(TE));
}
