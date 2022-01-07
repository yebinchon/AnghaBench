
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct tx_ring {scalar_t__ used; struct tcb* tcb_qtail; struct tcb* tcb_qhead; struct tx_desc* tx_desc_ring; } ;
struct tx_desc {int addr_lo; int len_vlan; scalar_t__ addr_hi; } ;
struct tcb {struct tcb* next; TYPE_3__* skb; int index_start; int index; } ;
struct net_device_stats {int tx_packets; int tx_bytes; } ;
struct et131x_adapter {int tcb_ready_qlock; TYPE_2__* pdev; struct tx_ring tx_ring; TYPE_1__* netdev; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct net_device_stats stats; } ;


 int DMA_TO_DEVICE ;
 int ET_DMA10_MASK ;
 int ET_DMA10_WRAP ;
 scalar_t__ INDEX10 (int ) ;
 scalar_t__ NUM_DESC_PER_RING_TX ;
 int WARN_ON (int) ;
 int add_10bit (int *,int) ;
 int dev_kfree_skb_any (TYPE_3__*) ;
 int dma_unmap_single (int *,int,int ,int ) ;
 int memset (struct tcb*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void free_send_packet(struct et131x_adapter *adapter,
        struct tcb *tcb)
{
 unsigned long flags;
 struct tx_desc *desc = ((void*)0);
 struct net_device_stats *stats = &adapter->netdev->stats;
 struct tx_ring *tx_ring = &adapter->tx_ring;
 u64 dma_addr;

 if (tcb->skb) {
  stats->tx_bytes += tcb->skb->len;





  do {
   desc = tx_ring->tx_desc_ring +
          INDEX10(tcb->index_start);

   dma_addr = desc->addr_lo;
   dma_addr |= (u64)desc->addr_hi << 32;

   dma_unmap_single(&adapter->pdev->dev,
      dma_addr,
      desc->len_vlan, DMA_TO_DEVICE);

   add_10bit(&tcb->index_start, 1);
   if (INDEX10(tcb->index_start) >=
       NUM_DESC_PER_RING_TX) {
    tcb->index_start &= ~ET_DMA10_MASK;
    tcb->index_start ^= ET_DMA10_WRAP;
   }
  } while (desc != tx_ring->tx_desc_ring + INDEX10(tcb->index));

  dev_kfree_skb_any(tcb->skb);
 }

 memset(tcb, 0, sizeof(struct tcb));


 spin_lock_irqsave(&adapter->tcb_ready_qlock, flags);

 stats->tx_packets++;

 if (tx_ring->tcb_qtail)
  tx_ring->tcb_qtail->next = tcb;
 else
  tx_ring->tcb_qhead = tcb;

 tx_ring->tcb_qtail = tcb;

 spin_unlock_irqrestore(&adapter->tcb_ready_qlock, flags);
 WARN_ON(tx_ring->used < 0);
}
