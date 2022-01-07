
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rmnet_priv {TYPE_2__* pcpu_stats; scalar_t__ real_dev; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_3__ {int tx_drops; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int NETDEV_TX_OK ;
 int kfree_skb (struct sk_buff*) ;
 struct rmnet_priv* netdev_priv (struct net_device*) ;
 int rmnet_egress_handler (struct sk_buff*) ;
 int this_cpu_inc (int ) ;

__attribute__((used)) static netdev_tx_t rmnet_vnd_start_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct rmnet_priv *priv;

 priv = netdev_priv(dev);
 if (priv->real_dev) {
  rmnet_egress_handler(skb);
 } else {
  this_cpu_inc(priv->pcpu_stats->stats.tx_drops);
  kfree_skb(skb);
 }
 return NETDEV_TX_OK;
}
