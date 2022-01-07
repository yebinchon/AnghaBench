
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct rmnet_priv {int pcpu_stats; } ;
struct TYPE_2__ {int tx_bytes; int tx_pkts; } ;
struct rmnet_pcpu_stats {int syncp; TYPE_1__ stats; } ;
struct net_device {int dummy; } ;


 struct rmnet_priv* netdev_priv (struct net_device*) ;
 struct rmnet_pcpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void rmnet_vnd_tx_fixup(struct sk_buff *skb, struct net_device *dev)
{
 struct rmnet_priv *priv = netdev_priv(dev);
 struct rmnet_pcpu_stats *pcpu_ptr;

 pcpu_ptr = this_cpu_ptr(priv->pcpu_stats);

 u64_stats_update_begin(&pcpu_ptr->syncp);
 pcpu_ptr->stats.tx_pkts++;
 pcpu_ptr->stats.tx_bytes += skb->len;
 u64_stats_update_end(&pcpu_ptr->syncp);
}
