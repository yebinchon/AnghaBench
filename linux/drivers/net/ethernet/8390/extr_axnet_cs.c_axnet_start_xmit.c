
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int * data; } ;
struct TYPE_2__ {int tx_bytes; int tx_errors; } ;
struct net_device {long base_addr; TYPE_1__ stats; } ;
struct ei_device {int irqlock; int tx1; int tx_start_page; int tx2; int lasttx; int txing; int page_lock; int txqueue; } ;
typedef int netdev_tx_t ;


 scalar_t__ EN0_IMR ;
 int ENISR_ALL ;
 int ETH_ZLEN ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NS8390_trigger_send (struct net_device*,int,int) ;
 int TX_PAGES ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ei_block_output (struct net_device*,int,int *,int) ;
 int max (int,int) ;
 int memset (int *,int ,int) ;
 int netdev_dbg (struct net_device*,char*,int,int,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*,int,int,int) ;
 scalar_t__ netif_msg_tx_queued (struct ei_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int outb_p (int,scalar_t__) ;
 int skb_copy_from_linear_data (struct sk_buff*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_err ;

__attribute__((used)) static netdev_tx_t axnet_start_xmit(struct sk_buff *skb,
       struct net_device *dev)
{
 long e8390_base = dev->base_addr;
 struct ei_device *ei_local = netdev_priv(dev);
 int length, send_length, output_page;
 unsigned long flags;
 u8 packet[ETH_ZLEN];

 netif_stop_queue(dev);

 length = skb->len;






 spin_lock_irqsave(&ei_local->page_lock, flags);
 outb_p(0x00, e8390_base + EN0_IMR);





 ei_local->irqlock = 1;

 send_length = max(length, ETH_ZLEN);
 if (ei_local->tx1 == 0)
 {
  output_page = ei_local->tx_start_page;
  ei_local->tx1 = send_length;
  if ((netif_msg_tx_queued(ei_local)) &&
      ei_local->tx2 > 0)
   netdev_dbg(dev,
       "idle transmitter tx2=%d, lasttx=%d, txing=%d\n",
       ei_local->tx2, ei_local->lasttx,
       ei_local->txing);
 }
 else if (ei_local->tx2 == 0)
 {
  output_page = ei_local->tx_start_page + TX_PAGES/2;
  ei_local->tx2 = send_length;
  if ((netif_msg_tx_queued(ei_local)) &&
      ei_local->tx1 > 0)
   netdev_dbg(dev,
       "idle transmitter, tx1=%d, lasttx=%d, txing=%d\n",
       ei_local->tx1, ei_local->lasttx,
       ei_local->txing);
 }
 else
 {
  netif_dbg(ei_local, tx_err, dev,
     "No Tx buffers free! tx1=%d tx2=%d last=%d\n",
     ei_local->tx1, ei_local->tx2,
     ei_local->lasttx);
  ei_local->irqlock = 0;
  netif_stop_queue(dev);
  outb_p(ENISR_ALL, e8390_base + EN0_IMR);
  spin_unlock_irqrestore(&ei_local->page_lock, flags);
  dev->stats.tx_errors++;
  return NETDEV_TX_BUSY;
 }







 if (length == skb->len)
  ei_block_output(dev, length, skb->data, output_page);
 else {
  memset(packet, 0, ETH_ZLEN);
  skb_copy_from_linear_data(skb, packet, skb->len);
  ei_block_output(dev, length, packet, output_page);
 }

 if (! ei_local->txing)
 {
  ei_local->txing = 1;
  NS8390_trigger_send(dev, send_length, output_page);
  netif_trans_update(dev);
  if (output_page == ei_local->tx_start_page)
  {
   ei_local->tx1 = -1;
   ei_local->lasttx = -1;
  }
  else
  {
   ei_local->tx2 = -1;
   ei_local->lasttx = -2;
  }
 }
 else ei_local->txqueue++;

 if (ei_local->tx1 && ei_local->tx2)
  netif_stop_queue(dev);
 else
  netif_start_queue(dev);


 ei_local->irqlock = 0;
 outb_p(ENISR_ALL, e8390_base + EN0_IMR);

 spin_unlock_irqrestore(&ei_local->page_lock, flags);

 dev_kfree_skb (skb);
 dev->stats.tx_bytes += send_length;

 return NETDEV_TX_OK;
}
