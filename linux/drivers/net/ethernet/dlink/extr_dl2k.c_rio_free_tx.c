
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct netdev_private {int old_tx; int cur_tx; int speed; int tx_lock; struct sk_buff** tx_skbuff; TYPE_1__* tx_ring; int pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int PCI_DMA_TODEVICE ;
 int TFDDone ;
 int TX_QUEUE_LEN ;
 int TX_RING_SIZE ;
 int cpu_to_le64 (int ) ;
 int desc_to_dma (TYPE_1__*) ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
rio_free_tx (struct net_device *dev, int irq)
{
 struct netdev_private *np = netdev_priv(dev);
 int entry = np->old_tx % TX_RING_SIZE;
 int tx_use = 0;
 unsigned long flag = 0;

 if (irq)
  spin_lock(&np->tx_lock);
 else
  spin_lock_irqsave(&np->tx_lock, flag);


 while (entry != np->cur_tx) {
  struct sk_buff *skb;

  if (!(np->tx_ring[entry].status & cpu_to_le64(TFDDone)))
   break;
  skb = np->tx_skbuff[entry];
  pci_unmap_single (np->pdev,
      desc_to_dma(&np->tx_ring[entry]),
      skb->len, PCI_DMA_TODEVICE);
  if (irq)
   dev_consume_skb_irq(skb);
  else
   dev_kfree_skb(skb);

  np->tx_skbuff[entry] = ((void*)0);
  entry = (entry + 1) % TX_RING_SIZE;
  tx_use++;
 }
 if (irq)
  spin_unlock(&np->tx_lock);
 else
  spin_unlock_irqrestore(&np->tx_lock, flag);
 np->old_tx = entry;




 if (netif_queue_stopped(dev) &&
     ((np->cur_tx - np->old_tx + TX_RING_SIZE) % TX_RING_SIZE
     < TX_QUEUE_LEN - 1 || np->speed == 10)) {
  netif_wake_queue (dev);
 }
}
