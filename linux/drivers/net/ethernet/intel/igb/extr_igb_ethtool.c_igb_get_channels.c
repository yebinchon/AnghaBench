
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {int flags; int rss_queues; } ;
struct ethtool_channels {int combined_count; void* other_count; void* max_other; int max_combined; } ;


 int IGB_FLAG_HAS_MSIX ;
 void* NON_Q_VECTORS ;
 int igb_max_channels (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void igb_get_channels(struct net_device *netdev,
        struct ethtool_channels *ch)
{
 struct igb_adapter *adapter = netdev_priv(netdev);


 ch->max_combined = igb_max_channels(adapter);


 if (adapter->flags & IGB_FLAG_HAS_MSIX) {
  ch->max_other = NON_Q_VECTORS;
  ch->other_count = NON_Q_VECTORS;
 }

 ch->combined_count = adapter->rss_queues;
}
