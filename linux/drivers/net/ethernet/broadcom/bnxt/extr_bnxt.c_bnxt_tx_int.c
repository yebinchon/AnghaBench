
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {scalar_t__ len; } ;
struct pci_dev {int dev; } ;
struct netdev_queue {int dummy; } ;
struct bnxt_tx_ring_info {size_t tx_cons; scalar_t__ dev_state; struct bnxt_sw_tx_bd* tx_buf_ring; int txq_index; } ;
struct bnxt_sw_tx_bd {int nr_frags; scalar_t__ is_push; struct sk_buff* skb; } ;
struct bnxt_napi {struct bnxt_tx_ring_info* tx_ring; } ;
struct bnxt {scalar_t__ tx_wake_thresh; struct pci_dev* pdev; int dev; } ;
struct TYPE_2__ {int * frags; } ;


 scalar_t__ BNXT_DEV_STATE_CLOSING ;
 size_t NEXT_TX (size_t) ;
 int PCI_DMA_TODEVICE ;
 int __netif_tx_lock (struct netdev_queue*,int ) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 scalar_t__ bnxt_tx_avail (struct bnxt*,struct bnxt_tx_ring_info*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_addr (struct bnxt_sw_tx_bd*,int ) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int mapping ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_completed_queue (struct netdev_queue*,int,unsigned int) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int smp_mb () ;
 int smp_processor_id () ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static void bnxt_tx_int(struct bnxt *bp, struct bnxt_napi *bnapi, int nr_pkts)
{
 struct bnxt_tx_ring_info *txr = bnapi->tx_ring;
 struct netdev_queue *txq = netdev_get_tx_queue(bp->dev, txr->txq_index);
 u16 cons = txr->tx_cons;
 struct pci_dev *pdev = bp->pdev;
 int i;
 unsigned int tx_bytes = 0;

 for (i = 0; i < nr_pkts; i++) {
  struct bnxt_sw_tx_bd *tx_buf;
  struct sk_buff *skb;
  int j, last;

  tx_buf = &txr->tx_buf_ring[cons];
  cons = NEXT_TX(cons);
  skb = tx_buf->skb;
  tx_buf->skb = ((void*)0);

  if (tx_buf->is_push) {
   tx_buf->is_push = 0;
   goto next_tx_int;
  }

  dma_unmap_single(&pdev->dev, dma_unmap_addr(tx_buf, mapping),
     skb_headlen(skb), PCI_DMA_TODEVICE);
  last = tx_buf->nr_frags;

  for (j = 0; j < last; j++) {
   cons = NEXT_TX(cons);
   tx_buf = &txr->tx_buf_ring[cons];
   dma_unmap_page(
    &pdev->dev,
    dma_unmap_addr(tx_buf, mapping),
    skb_frag_size(&skb_shinfo(skb)->frags[j]),
    PCI_DMA_TODEVICE);
  }

next_tx_int:
  cons = NEXT_TX(cons);

  tx_bytes += skb->len;
  dev_kfree_skb_any(skb);
 }

 netdev_tx_completed_queue(txq, nr_pkts, tx_bytes);
 txr->tx_cons = cons;






 smp_mb();

 if (unlikely(netif_tx_queue_stopped(txq)) &&
     (bnxt_tx_avail(bp, txr) > bp->tx_wake_thresh)) {
  __netif_tx_lock(txq, smp_processor_id());
  if (netif_tx_queue_stopped(txq) &&
      bnxt_tx_avail(bp, txr) > bp->tx_wake_thresh &&
      txr->dev_state != BNXT_DEV_STATE_CLOSING)
   netif_tx_wake_queue(txq);
  __netif_tx_unlock(txq);
 }
}
