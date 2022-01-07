
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; char* data; } ;
struct TYPE_2__ {int tx_bytes; int tx_errors; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; int irq; } ;
struct ei_device {int irqlock; int tx1; int tx_start_page; int tx2; int lasttx; int txing; int page_lock; int txqueue; } ;
typedef int netdev_tx_t ;


 scalar_t__ EN0_IMR ;
 int ENISR_ALL ;
 int ETH_ZLEN ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NS8390_trigger_send (struct net_device*,int,int) ;
 int TX_PAGES ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int disable_irq_nosync_lockdep_irqsave (int ,unsigned long*) ;
 int ei_block_output (struct net_device*,int,char*,int) ;
 int ei_outb_p (int,scalar_t__) ;
 int enable_irq_lockdep_irqrestore (int ,unsigned long*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int netdev_dbg (struct net_device*,char*,int,int,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*,int,int,int) ;
 scalar_t__ netif_msg_tx_queued (struct ei_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_err ;

__attribute__((used)) static netdev_tx_t __ei_start_xmit(struct sk_buff *skb,
       struct net_device *dev)
{
 unsigned long e8390_base = dev->base_addr;
 struct ei_device *ei_local = netdev_priv(dev);
 int send_length = skb->len, output_page;
 unsigned long flags;
 char buf[ETH_ZLEN];
 char *data = skb->data;

 if (skb->len < ETH_ZLEN) {
  memset(buf, 0, ETH_ZLEN);
  memcpy(buf, data, skb->len);
  send_length = ETH_ZLEN;
  data = buf;
 }






 spin_lock_irqsave(&ei_local->page_lock, flags);
 ei_outb_p(0x00, e8390_base + EN0_IMR);
 spin_unlock_irqrestore(&ei_local->page_lock, flags);






 disable_irq_nosync_lockdep_irqsave(dev->irq, &flags);

 spin_lock(&ei_local->page_lock);

 ei_local->irqlock = 1;
 if (ei_local->tx1 == 0) {
  output_page = ei_local->tx_start_page;
  ei_local->tx1 = send_length;
  if ((netif_msg_tx_queued(ei_local)) &&
      ei_local->tx2 > 0)
   netdev_dbg(dev,
       "idle transmitter tx2=%d, lasttx=%d, txing=%d\n",
       ei_local->tx2, ei_local->lasttx, ei_local->txing);
 } else if (ei_local->tx2 == 0) {
  output_page = ei_local->tx_start_page + TX_PAGES/2;
  ei_local->tx2 = send_length;
  if ((netif_msg_tx_queued(ei_local)) &&
      ei_local->tx1 > 0)
   netdev_dbg(dev,
       "idle transmitter, tx1=%d, lasttx=%d, txing=%d\n",
       ei_local->tx1, ei_local->lasttx, ei_local->txing);
 } else {
  netif_dbg(ei_local, tx_err, dev,
     "No Tx buffers free! tx1=%d tx2=%d last=%d\n",
     ei_local->tx1, ei_local->tx2, ei_local->lasttx);
  ei_local->irqlock = 0;
  netif_stop_queue(dev);
  ei_outb_p(ENISR_ALL, e8390_base + EN0_IMR);
  spin_unlock(&ei_local->page_lock);
  enable_irq_lockdep_irqrestore(dev->irq, &flags);
  dev->stats.tx_errors++;
  return NETDEV_TX_BUSY;
 }







 ei_block_output(dev, send_length, data, output_page);

 if (!ei_local->txing) {
  ei_local->txing = 1;
  NS8390_trigger_send(dev, send_length, output_page);
  if (output_page == ei_local->tx_start_page) {
   ei_local->tx1 = -1;
   ei_local->lasttx = -1;
  } else {
   ei_local->tx2 = -1;
   ei_local->lasttx = -2;
  }
 } else
  ei_local->txqueue++;

 if (ei_local->tx1 && ei_local->tx2)
  netif_stop_queue(dev);
 else
  netif_start_queue(dev);


 ei_local->irqlock = 0;
 ei_outb_p(ENISR_ALL, e8390_base + EN0_IMR);

 spin_unlock(&ei_local->page_lock);
 enable_irq_lockdep_irqrestore(dev->irq, &flags);
 skb_tx_timestamp(skb);
 dev_consume_skb_any(skb);
 dev->stats.tx_bytes += send_length;

 return NETDEV_TX_OK;
}
