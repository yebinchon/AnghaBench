
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int curr_queue_pairs; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int VIRTNET_RQ_STATS_LEN ;
 int VIRTNET_SQ_STATS_LEN ;
 struct virtnet_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int virtnet_get_sset_count(struct net_device *dev, int sset)
{
 struct virtnet_info *vi = netdev_priv(dev);

 switch (sset) {
 case 128:
  return vi->curr_queue_pairs * (VIRTNET_RQ_STATS_LEN +
            VIRTNET_SQ_STATS_LEN);
 default:
  return -EOPNOTSUPP;
 }
}
