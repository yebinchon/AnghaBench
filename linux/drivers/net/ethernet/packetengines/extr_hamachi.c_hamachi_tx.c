
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_4__ {int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct hamachi_private {scalar_t__ cur_tx; int dirty_tx; TYPE_1__* tx_ring; struct sk_buff** tx_skbuff; int pci_dev; } ;
struct TYPE_3__ {int status_n_length; int addr; } ;


 int DescEndRing ;
 int DescOwn ;
 int PCI_DMA_TODEVICE ;
 int TX_RING_SIZE ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int leXX_to_cpu (int ) ;
 struct hamachi_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static inline int hamachi_tx(struct net_device *dev)
{
 struct hamachi_private *hmp = netdev_priv(dev);



 for (; hmp->cur_tx - hmp->dirty_tx > 0; hmp->dirty_tx++) {
  int entry = hmp->dirty_tx % TX_RING_SIZE;
  struct sk_buff *skb;

  if (hmp->tx_ring[entry].status_n_length & cpu_to_le32(DescOwn))
   break;

  skb = hmp->tx_skbuff[entry];
  if (skb) {
   pci_unmap_single(hmp->pci_dev,
    leXX_to_cpu(hmp->tx_ring[entry].addr),
    skb->len, PCI_DMA_TODEVICE);
   dev_kfree_skb(skb);
   hmp->tx_skbuff[entry] = ((void*)0);
  }
  hmp->tx_ring[entry].status_n_length = 0;
  if (entry >= TX_RING_SIZE-1)
   hmp->tx_ring[TX_RING_SIZE-1].status_n_length |=
    cpu_to_le32(DescEndRing);
  dev->stats.tx_packets++;
 }

 return 0;
}
