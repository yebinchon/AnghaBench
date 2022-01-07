
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tx_ring_info {struct sk_buff* skb; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct ace_private {int tx_ret_csm; int pdev; TYPE_1__* skb; } ;
struct TYPE_3__ {struct tx_ring_info* tx_skbuff; } ;


 int ACE_TX_RING_ENTRIES (struct ace_private*) ;
 int PCI_DMA_TODEVICE ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 int dma_unmap_addr (struct tx_ring_info*,int ) ;
 scalar_t__ dma_unmap_len (struct tx_ring_info*,int ) ;
 int dma_unmap_len_set (struct tx_ring_info*,int ,int ) ;
 int maplen ;
 int mapping ;
 struct ace_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_unmap_page (int ,int ,scalar_t__,int ) ;
 int wmb () ;

__attribute__((used)) static inline void ace_tx_int(struct net_device *dev,
         u32 txcsm, u32 idx)
{
 struct ace_private *ap = netdev_priv(dev);

 do {
  struct sk_buff *skb;
  struct tx_ring_info *info;

  info = ap->skb->tx_skbuff + idx;
  skb = info->skb;

  if (dma_unmap_len(info, maplen)) {
   pci_unmap_page(ap->pdev, dma_unmap_addr(info, mapping),
           dma_unmap_len(info, maplen),
           PCI_DMA_TODEVICE);
   dma_unmap_len_set(info, maplen, 0);
  }

  if (skb) {
   dev->stats.tx_packets++;
   dev->stats.tx_bytes += skb->len;
   dev_consume_skb_irq(skb);
   info->skb = ((void*)0);
  }

  idx = (idx + 1) % ACE_TX_RING_ENTRIES(ap);
 } while (idx != txcsm);

 if (netif_queue_stopped(dev))
  netif_wake_queue(dev);

 wmb();
 ap->tx_ret_csm = txcsm;
}
