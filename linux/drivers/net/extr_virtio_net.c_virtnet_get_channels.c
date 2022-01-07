
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int max_queue_pairs; int curr_queue_pairs; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; scalar_t__ max_other; int max_combined; int combined_count; } ;


 struct virtnet_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void virtnet_get_channels(struct net_device *dev,
     struct ethtool_channels *channels)
{
 struct virtnet_info *vi = netdev_priv(dev);

 channels->combined_count = vi->curr_queue_pairs;
 channels->max_combined = vi->max_queue_pairs;
 channels->max_other = 0;
 channels->rx_count = 0;
 channels->tx_count = 0;
 channels->other_count = 0;
}
