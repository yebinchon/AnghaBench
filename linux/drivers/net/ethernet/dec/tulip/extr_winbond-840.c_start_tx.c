
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct netdev_private {int cur_tx; scalar_t__ tx_q_bytes; scalar_t__ dirty_tx; int drv_flags; int tx_full; int lock; scalar_t__ base_addr; TYPE_1__* tx_ring; scalar_t__* tx_addr; struct sk_buff** tx_skbuff; int pci_dev; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int length; int status; scalar_t__ buffer2; scalar_t__ buffer1; } ;


 int DescEndRing ;
 int DescOwned ;
 int DescWholePkt ;
 int HasBrokenTx ;
 int NETDEV_TX_OK ;
 int PCI_DMA_TODEVICE ;
 int TX_BUFLIMIT ;
 scalar_t__ TX_BUG_FIFO_LIMIT ;
 scalar_t__ TX_QUEUE_LEN ;
 int TX_RING_SIZE ;
 scalar_t__ TxStartDemand ;
 int debug ;
 int iowrite32 (int ,scalar_t__) ;
 int netdev_dbg (struct net_device*,char*,scalar_t__,unsigned int) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ pci_map_single (int ,int ,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t start_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 unsigned entry;





 entry = np->cur_tx % TX_RING_SIZE;

 np->tx_addr[entry] = pci_map_single(np->pci_dev,
    skb->data,skb->len, PCI_DMA_TODEVICE);
 np->tx_skbuff[entry] = skb;

 np->tx_ring[entry].buffer1 = np->tx_addr[entry];
 if (skb->len < TX_BUFLIMIT) {
  np->tx_ring[entry].length = DescWholePkt | skb->len;
 } else {
  int len = skb->len - TX_BUFLIMIT;

  np->tx_ring[entry].buffer2 = np->tx_addr[entry]+TX_BUFLIMIT;
  np->tx_ring[entry].length = DescWholePkt | (len << 11) | TX_BUFLIMIT;
 }
 if(entry == TX_RING_SIZE-1)
  np->tx_ring[entry].length |= DescEndRing;
 spin_lock_irq(&np->lock);
 np->cur_tx++;

 wmb();
 np->tx_ring[entry].status = DescOwned;
 wmb();
 iowrite32(0, np->base_addr + TxStartDemand);
 np->tx_q_bytes += skb->len;


 if (np->cur_tx - np->dirty_tx > TX_QUEUE_LEN ||
  ((np->drv_flags & HasBrokenTx) && np->tx_q_bytes > TX_BUG_FIFO_LIMIT)) {
  netif_stop_queue(dev);
  wmb();
  np->tx_full = 1;
 }
 spin_unlock_irq(&np->lock);

 if (debug > 4) {
  netdev_dbg(dev, "Transmit frame #%d queued in slot %d\n",
      np->cur_tx, entry);
 }
 return NETDEV_TX_OK;
}
