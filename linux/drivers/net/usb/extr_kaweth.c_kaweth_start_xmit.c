
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct kaweth_device {int device_lock; int tx_urb; scalar_t__ end; int dev; struct sk_buff* tx_skb; int status; } ;
typedef int netdev_tx_t ;
typedef int __le16 ;


 int GFP_ATOMIC ;
 scalar_t__ IS_BLOCKED (int ) ;
 int NETDEV_TX_OK ;
 int * __skb_push (struct sk_buff*,int) ;
 int cpu_to_le16 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dev_warn (int *,char*,int) ;
 int kaweth_async_set_rx_mode (struct kaweth_device*) ;
 int kaweth_usb_transmit_complete ;
 struct kaweth_device* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_fill_bulk_urb (int ,int ,int ,int *,int ,int ,struct kaweth_device*) ;
 int usb_sndbulkpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static netdev_tx_t kaweth_start_xmit(struct sk_buff *skb,
        struct net_device *net)
{
 struct kaweth_device *kaweth = netdev_priv(net);
 __le16 *private_header;

 int res;

 spin_lock_irq(&kaweth->device_lock);

 kaweth_async_set_rx_mode(kaweth);
 netif_stop_queue(net);
 if (IS_BLOCKED(kaweth->status)) {
  goto skip;
 }


 if (skb_cow_head(skb, 2)) {
  net->stats.tx_errors++;
  netif_start_queue(net);
  spin_unlock_irq(&kaweth->device_lock);
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 private_header = __skb_push(skb, 2);
 *private_header = cpu_to_le16(skb->len-2);
 kaweth->tx_skb = skb;

 usb_fill_bulk_urb(kaweth->tx_urb,
        kaweth->dev,
        usb_sndbulkpipe(kaweth->dev, 2),
        private_header,
        skb->len,
        kaweth_usb_transmit_complete,
        kaweth);
 kaweth->end = 0;

 if((res = usb_submit_urb(kaweth->tx_urb, GFP_ATOMIC)))
 {
  dev_warn(&net->dev, "kaweth failed tx_urb %d\n", res);
skip:
  net->stats.tx_errors++;

  netif_start_queue(net);
  dev_kfree_skb_irq(skb);
 }
 else
 {
  net->stats.tx_packets++;
  net->stats.tx_bytes += skb->len;
 }

 spin_unlock_irq(&kaweth->device_lock);

 return NETDEV_TX_OK;
}
