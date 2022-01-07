
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fm10k_intfc {TYPE_1__* ring_feature; } ;
struct ethtool_channels {unsigned int combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;
struct TYPE_2__ {unsigned int limit; } ;


 int EINVAL ;
 scalar_t__ NON_Q_VECTORS ;
 size_t RING_F_RSS ;
 unsigned int fm10k_max_channels (struct net_device*) ;
 int fm10k_setup_tc (struct net_device*,int ) ;
 int netdev_get_num_tc (struct net_device*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_set_channels(struct net_device *dev,
         struct ethtool_channels *ch)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 unsigned int count = ch->combined_count;


 if (!count || ch->rx_count || ch->tx_count)
  return -EINVAL;


 if (ch->other_count != NON_Q_VECTORS)
  return -EINVAL;


 if (count > fm10k_max_channels(dev))
  return -EINVAL;

 interface->ring_feature[RING_F_RSS].limit = count;


 return fm10k_setup_tc(dev, netdev_get_num_tc(dev));
}
