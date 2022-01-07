
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void vrf_tx_error(struct net_device *vrf_dev, struct sk_buff *skb)
{
 vrf_dev->stats.tx_errors++;
 kfree_skb(skb);
}
