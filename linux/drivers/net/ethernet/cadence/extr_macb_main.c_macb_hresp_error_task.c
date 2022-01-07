
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct macb_queue {int tx_ring_dma; int rx_ring_dma; } ;
struct TYPE_2__ {int (* mog_init_rings ) (struct macb*) ;} ;
struct macb {unsigned int num_queues; int rx_intr_mask; int hw_dma_cap; struct macb_queue* queues; TYPE_1__ macbgem_ops; struct net_device* dev; } ;


 int HRESP ;
 int HW_DMA_CAP_64B ;
 int IDR ;
 int IER ;
 int MACB_BIT (int ) ;
 int MACB_TX_INT_FLAGS ;
 int NCR ;
 int RBQP ;
 int RBQPH ;
 int RE ;
 int TBQP ;
 int TBQPH ;
 int TE ;
 int lower_32_bits (int ) ;
 int macb_readl (struct macb*,int ) ;
 int macb_writel (struct macb*,int ,int) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int queue_writel (struct macb_queue*,int ,int) ;
 int stub1 (struct macb*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void macb_hresp_error_task(unsigned long data)
{
 struct macb *bp = (struct macb *)data;
 struct net_device *dev = bp->dev;
 struct macb_queue *queue = bp->queues;
 unsigned int q;
 u32 ctrl;

 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
  queue_writel(queue, IDR, bp->rx_intr_mask |
      MACB_TX_INT_FLAGS |
      MACB_BIT(HRESP));
 }
 ctrl = macb_readl(bp, NCR);
 ctrl &= ~(MACB_BIT(RE) | MACB_BIT(TE));
 macb_writel(bp, NCR, ctrl);

 netif_tx_stop_all_queues(dev);
 netif_carrier_off(dev);

 bp->macbgem_ops.mog_init_rings(bp);


 for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
  queue_writel(queue, RBQP, lower_32_bits(queue->rx_ring_dma));





  queue_writel(queue, TBQP, lower_32_bits(queue->tx_ring_dma));







  queue_writel(queue, IER,
        bp->rx_intr_mask |
        MACB_TX_INT_FLAGS |
        MACB_BIT(HRESP));
 }

 ctrl |= MACB_BIT(RE) | MACB_BIT(TE);
 macb_writel(bp, NCR, ctrl);

 netif_carrier_on(dev);
 netif_tx_start_all_queues(dev);
}
