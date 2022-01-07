
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_packets; int tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct ks8851_net {struct net_device* netdev; } ;


 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void ks8851_done_tx(struct ks8851_net *ks, struct sk_buff *txb)
{
 struct net_device *dev = ks->netdev;

 dev->stats.tx_bytes += txb->len;
 dev->stats.tx_packets++;

 dev_kfree_skb(txb);
}
