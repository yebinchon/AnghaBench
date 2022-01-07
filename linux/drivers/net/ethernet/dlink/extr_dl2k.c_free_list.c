
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct netdev_private {struct sk_buff** tx_skbuff; TYPE_1__* tx_ring; int pdev; TYPE_1__* rx_ring; struct sk_buff** rx_skbuff; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ fraginfo; scalar_t__ status; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int desc_to_dma (TYPE_1__*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void free_list(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 struct sk_buff *skb;
 int i;


 for (i = 0; i < RX_RING_SIZE; i++) {
  skb = np->rx_skbuff[i];
  if (skb) {
   pci_unmap_single(np->pdev, desc_to_dma(&np->rx_ring[i]),
      skb->len, PCI_DMA_FROMDEVICE);
   dev_kfree_skb(skb);
   np->rx_skbuff[i] = ((void*)0);
  }
  np->rx_ring[i].status = 0;
  np->rx_ring[i].fraginfo = 0;
 }
 for (i = 0; i < TX_RING_SIZE; i++) {
  skb = np->tx_skbuff[i];
  if (skb) {
   pci_unmap_single(np->pdev, desc_to_dma(&np->tx_ring[i]),
      skb->len, PCI_DMA_TODEVICE);
   dev_kfree_skb(skb);
   np->tx_skbuff[i] = ((void*)0);
  }
 }
}
