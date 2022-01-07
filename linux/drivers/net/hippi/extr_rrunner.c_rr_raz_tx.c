
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addrlo; } ;
struct tx_desc {TYPE_1__ addr; scalar_t__ size; } ;
struct sk_buff {int len; } ;
struct rr_private {struct sk_buff** tx_skbuff; int pci_dev; struct tx_desc* tx_ring; } ;
struct net_device {int dummy; } ;


 int PCI_DMA_TODEVICE ;
 int TX_RING_ENTRIES ;
 int dev_kfree_skb (struct sk_buff*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int set_rraddr (TYPE_1__*,int ) ;

__attribute__((used)) static inline void rr_raz_tx(struct rr_private *rrpriv,
        struct net_device *dev)
{
 int i;

 for (i = 0; i < TX_RING_ENTRIES; i++) {
  struct sk_buff *skb = rrpriv->tx_skbuff[i];

  if (skb) {
   struct tx_desc *desc = &(rrpriv->tx_ring[i]);

          pci_unmap_single(rrpriv->pci_dev, desc->addr.addrlo,
    skb->len, PCI_DMA_TODEVICE);
   desc->size = 0;
   set_rraddr(&desc->addr, 0);
   dev_kfree_skb(skb);
   rrpriv->tx_skbuff[i] = ((void*)0);
  }
 }
}
