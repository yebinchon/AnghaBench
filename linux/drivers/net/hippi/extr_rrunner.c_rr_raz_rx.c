
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int addrlo; } ;
struct rx_desc {TYPE_1__ addr; scalar_t__ size; } ;
struct rr_private {struct sk_buff** rx_skbuff; int pci_dev; struct rx_desc* rx_ring; } ;
struct net_device {scalar_t__ mtu; } ;


 scalar_t__ HIPPI_HLEN ;
 int PCI_DMA_FROMDEVICE ;
 int RX_RING_ENTRIES ;
 int dev_kfree_skb (struct sk_buff*) ;
 int pci_unmap_single (int ,int ,scalar_t__,int ) ;
 int set_rraddr (TYPE_1__*,int ) ;

__attribute__((used)) static inline void rr_raz_rx(struct rr_private *rrpriv,
        struct net_device *dev)
{
 int i;

 for (i = 0; i < RX_RING_ENTRIES; i++) {
  struct sk_buff *skb = rrpriv->rx_skbuff[i];

  if (skb) {
   struct rx_desc *desc = &(rrpriv->rx_ring[i]);

          pci_unmap_single(rrpriv->pci_dev, desc->addr.addrlo,
    dev->mtu + HIPPI_HLEN, PCI_DMA_FROMDEVICE);
   desc->size = 0;
   set_rraddr(&desc->addr, 0);
   dev_kfree_skb(skb);
   rrpriv->rx_skbuff[i] = ((void*)0);
  }
 }
}
