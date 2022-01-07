
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct net_device {int dummy; } ;
struct de_private {unsigned int tx_head; int lock; TYPE_1__* tx_skb; int pdev; struct de_desc* tx_ring; } ;
struct de_desc {void* opts1; void* addr1; void* opts2; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int mapping; struct sk_buff* skb; } ;


 int DE_TX_RING_SIZE ;
 int DescOwn ;
 int FirstFrag ;
 int LastFrag ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 unsigned int NEXT_TX (unsigned int) ;
 int NormalTxPoll ;
 int PCI_DMA_TODEVICE ;
 int RingEnd ;
 unsigned int TX_BUFFS_AVAIL (struct de_private*) ;
 int TxPoll ;
 int TxSwInt ;
 void* cpu_to_le32 (int) ;
 int dw32 (int ,int ) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct de_private*,int ,struct net_device*,char*,unsigned int,int) ;
 int netif_stop_queue (struct net_device*) ;
 int pci_map_single (int ,int ,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tx_queued ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t de_start_xmit (struct sk_buff *skb,
     struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);
 unsigned int entry, tx_free;
 u32 mapping, len, flags = FirstFrag | LastFrag;
 struct de_desc *txd;

 spin_lock_irq(&de->lock);

 tx_free = TX_BUFFS_AVAIL(de);
 if (tx_free == 0) {
  netif_stop_queue(dev);
  spin_unlock_irq(&de->lock);
  return NETDEV_TX_BUSY;
 }
 tx_free--;

 entry = de->tx_head;

 txd = &de->tx_ring[entry];

 len = skb->len;
 mapping = pci_map_single(de->pdev, skb->data, len, PCI_DMA_TODEVICE);
 if (entry == (DE_TX_RING_SIZE - 1))
  flags |= RingEnd;
 if (!tx_free || (tx_free == (DE_TX_RING_SIZE / 2)))
  flags |= TxSwInt;
 flags |= len;
 txd->opts2 = cpu_to_le32(flags);
 txd->addr1 = cpu_to_le32(mapping);

 de->tx_skb[entry].skb = skb;
 de->tx_skb[entry].mapping = mapping;
 wmb();

 txd->opts1 = cpu_to_le32(DescOwn);
 wmb();

 de->tx_head = NEXT_TX(entry);
 netif_dbg(de, tx_queued, dev, "tx queued, slot %d, skblen %d\n",
    entry, skb->len);

 if (tx_free == 0)
  netif_stop_queue(dev);

 spin_unlock_irq(&de->lock);


 dw32(TxPoll, NormalTxPoll);

 return NETDEV_TX_OK;
}
