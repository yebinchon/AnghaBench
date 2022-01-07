
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macb {int num_queues; } ;


 int EOPNOTSUPP ;

 int GEM_STATS_LEN ;
 int QUEUE_STATS_LEN ;
 struct macb* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gem_get_sset_count(struct net_device *dev, int sset)
{
 struct macb *bp = netdev_priv(dev);

 switch (sset) {
 case 128:
  return GEM_STATS_LEN + bp->num_queues * QUEUE_STATS_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
