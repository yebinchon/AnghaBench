
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct pci_dev {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct myri10ge_tx_buf {int pkt_done; int done; int mask; int req; int wake_queue; int send_stop; scalar_t__ queue_active; TYPE_4__* info; } ;
struct TYPE_7__ {int tx_packets; int tx_bytes; } ;
struct myri10ge_slice_state {TYPE_3__* mgp; int dev; TYPE_1__ stats; struct myri10ge_tx_buf tx; } ;
struct TYPE_10__ {scalar_t__ last; struct sk_buff* skb; } ;
struct TYPE_9__ {int ss; scalar_t__ running; TYPE_2__* dev; struct pci_dev* pdev; } ;
struct TYPE_8__ {int real_num_tx_queues; } ;


 scalar_t__ MYRI10GE_ETH_RUNNING ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ __netif_tx_trylock (struct netdev_queue*) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 int bus ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 int dma_unmap_addr (TYPE_4__*,int ) ;
 int dma_unmap_len (TYPE_4__*,int) ;
 int dma_unmap_len_set (TYPE_4__*,int,int ) ;
 int htonl (int) ;
 int mb () ;
 struct netdev_queue* netdev_get_tx_queue (int ,struct myri10ge_slice_state*) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int pci_unmap_page (struct pci_dev*,int ,int,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int,int ) ;
 int put_be32 (int ,int ) ;

__attribute__((used)) static inline void
myri10ge_tx_done(struct myri10ge_slice_state *ss, int mcp_index)
{
 struct pci_dev *pdev = ss->mgp->pdev;
 struct myri10ge_tx_buf *tx = &ss->tx;
 struct netdev_queue *dev_queue;
 struct sk_buff *skb;
 int idx, len;

 while (tx->pkt_done != mcp_index) {
  idx = tx->done & tx->mask;
  skb = tx->info[idx].skb;


  tx->info[idx].skb = ((void*)0);
  if (tx->info[idx].last) {
   tx->pkt_done++;
   tx->info[idx].last = 0;
  }
  tx->done++;
  len = dma_unmap_len(&tx->info[idx], len);
  dma_unmap_len_set(&tx->info[idx], len, 0);
  if (skb) {
   ss->stats.tx_bytes += skb->len;
   ss->stats.tx_packets++;
   dev_consume_skb_irq(skb);
   if (len)
    pci_unmap_single(pdev,
       dma_unmap_addr(&tx->info[idx],
        bus), len,
       PCI_DMA_TODEVICE);
  } else {
   if (len)
    pci_unmap_page(pdev,
            dma_unmap_addr(&tx->info[idx],
             bus), len,
            PCI_DMA_TODEVICE);
  }
 }

 dev_queue = netdev_get_tx_queue(ss->dev, ss - ss->mgp->ss);
 if ((ss->mgp->dev->real_num_tx_queues > 1) &&
     __netif_tx_trylock(dev_queue)) {
  if (tx->req == tx->done) {
   tx->queue_active = 0;
   put_be32(htonl(1), tx->send_stop);
   mb();
  }
  __netif_tx_unlock(dev_queue);
 }


 if (netif_tx_queue_stopped(dev_queue) &&
     tx->req - tx->done < (tx->mask >> 1) &&
     ss->mgp->running == MYRI10GE_ETH_RUNNING) {
  tx->wake_queue++;
  netif_tx_wake_queue(dev_queue);
 }
}
