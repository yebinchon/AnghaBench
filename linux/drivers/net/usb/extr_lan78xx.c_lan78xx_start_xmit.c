
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lan78xx_net {int bh; TYPE_3__* net; int txq_pend; TYPE_1__* udev; } ;
typedef int netdev_tx_t ;
struct TYPE_5__ {int tx_dropped; int tx_errors; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {scalar_t__ speed; } ;


 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 scalar_t__ USB_SPEED_SUPER ;
 struct sk_buff* lan78xx_tx_prep (struct lan78xx_net*,struct sk_buff*,int ) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int netif_dbg (struct lan78xx_net*,int ,TYPE_3__*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int tasklet_schedule (int *) ;
 int tx_err ;

__attribute__((used)) static netdev_tx_t
lan78xx_start_xmit(struct sk_buff *skb, struct net_device *net)
{
 struct lan78xx_net *dev = netdev_priv(net);
 struct sk_buff *skb2 = ((void*)0);

 if (skb) {
  skb_tx_timestamp(skb);
  skb2 = lan78xx_tx_prep(dev, skb, GFP_ATOMIC);
 }

 if (skb2) {
  skb_queue_tail(&dev->txq_pend, skb2);


  if ((dev->udev->speed < USB_SPEED_SUPER) &&
      (skb_queue_len(&dev->txq_pend) > 10))
   netif_stop_queue(net);
 } else {
  netif_dbg(dev, tx_err, dev->net,
     "lan78xx_tx_prep return NULL\n");
  dev->net->stats.tx_errors++;
  dev->net->stats.tx_dropped++;
 }

 tasklet_schedule(&dev->bh);

 return NETDEV_TX_OK;
}
