
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tulip_private {TYPE_3__* tx_buffers; int pdev; TYPE_2__* rx_ring; TYPE_1__* rx_buffers; } ;
struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {scalar_t__ mapping; struct sk_buff* skb; } ;
struct TYPE_5__ {int buffer1; scalar_t__ length; scalar_t__ status; } ;
struct TYPE_4__ {scalar_t__ mapping; struct sk_buff* skb; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int cpu_to_le32 (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void tulip_free_ring (struct net_device *dev)
{
 struct tulip_private *tp = netdev_priv(dev);
 int i;


 for (i = 0; i < RX_RING_SIZE; i++) {
  struct sk_buff *skb = tp->rx_buffers[i].skb;
  dma_addr_t mapping = tp->rx_buffers[i].mapping;

  tp->rx_buffers[i].skb = ((void*)0);
  tp->rx_buffers[i].mapping = 0;

  tp->rx_ring[i].status = 0;
  tp->rx_ring[i].length = 0;

  tp->rx_ring[i].buffer1 = cpu_to_le32(0xBADF00D0);
  if (skb) {
   pci_unmap_single(tp->pdev, mapping, PKT_BUF_SZ,
      PCI_DMA_FROMDEVICE);
   dev_kfree_skb (skb);
  }
 }

 for (i = 0; i < TX_RING_SIZE; i++) {
  struct sk_buff *skb = tp->tx_buffers[i].skb;

  if (skb != ((void*)0)) {
   pci_unmap_single(tp->pdev, tp->tx_buffers[i].mapping,
      skb->len, PCI_DMA_TODEVICE);
   dev_kfree_skb (skb);
  }
  tp->tx_buffers[i].skb = ((void*)0);
  tp->tx_buffers[i].mapping = 0;
 }
}
