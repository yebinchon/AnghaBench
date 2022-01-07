
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void emac_tx_handler(void *token, int len, int status)
{
 struct sk_buff *skb = token;
 struct net_device *ndev = skb->dev;




 if (unlikely(netif_queue_stopped(ndev)))
  netif_wake_queue(ndev);
 ndev->stats.tx_packets++;
 ndev->stats.tx_bytes += len;
 dev_kfree_skb_any(skb);
}
