
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fm10k_intfc {TYPE_1__* ring_feature; } ;
struct ethtool_channels {int combined_count; int max_other; int other_count; int max_combined; } ;
struct TYPE_2__ {int indices; } ;


 int NON_Q_VECTORS ;
 size_t RING_F_RSS ;
 int fm10k_max_channels (struct net_device*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fm10k_get_channels(struct net_device *dev,
          struct ethtool_channels *ch)
{
 struct fm10k_intfc *interface = netdev_priv(dev);


 ch->max_combined = fm10k_max_channels(dev);


 ch->max_other = NON_Q_VECTORS;
 ch->other_count = ch->max_other;


 ch->combined_count = interface->ring_feature[RING_F_RSS].indices;
}
