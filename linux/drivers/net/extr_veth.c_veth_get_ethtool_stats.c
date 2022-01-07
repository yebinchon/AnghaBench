
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct veth_rq_stats {int syncp; } ;
struct veth_priv {TYPE_1__* rq; int peer; } ;
struct net_device {int real_num_rx_queues; int ifindex; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_4__ {size_t offset; } ;
struct TYPE_3__ {struct veth_rq_stats stats; } ;


 int VETH_RQ_STATS_LEN ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;
 TYPE_2__* veth_rq_stats_desc ;

__attribute__((used)) static void veth_get_ethtool_stats(struct net_device *dev,
  struct ethtool_stats *stats, u64 *data)
{
 struct veth_priv *priv = netdev_priv(dev);
 struct net_device *peer = rtnl_dereference(priv->peer);
 int i, j, idx;

 data[0] = peer ? peer->ifindex : 0;
 idx = 1;
 for (i = 0; i < dev->real_num_rx_queues; i++) {
  const struct veth_rq_stats *rq_stats = &priv->rq[i].stats;
  const void *stats_base = (void *)rq_stats;
  unsigned int start;
  size_t offset;

  do {
   start = u64_stats_fetch_begin_irq(&rq_stats->syncp);
   for (j = 0; j < VETH_RQ_STATS_LEN; j++) {
    offset = veth_rq_stats_desc[j].offset;
    data[idx + j] = *(u64 *)(stats_base + offset);
   }
  } while (u64_stats_fetch_retry_irq(&rq_stats->syncp, start));
  idx += VETH_RQ_STATS_LEN;
 }
}
