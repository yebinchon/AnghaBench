
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {unsigned int rss_queues; } ;
struct ethtool_channels {unsigned int combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;


 int EINVAL ;
 scalar_t__ NON_Q_VECTORS ;
 unsigned int igb_max_channels (struct igb_adapter*) ;
 int igb_reinit_queues (struct igb_adapter*) ;
 int igb_set_flag_queue_pairs (struct igb_adapter*,unsigned int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_set_channels(struct net_device *netdev,
       struct ethtool_channels *ch)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 unsigned int count = ch->combined_count;
 unsigned int max_combined = 0;


 if (!count || ch->rx_count || ch->tx_count)
  return -EINVAL;


 if (ch->other_count != NON_Q_VECTORS)
  return -EINVAL;


 max_combined = igb_max_channels(adapter);
 if (count > max_combined)
  return -EINVAL;

 if (count != adapter->rss_queues) {
  adapter->rss_queues = count;
  igb_set_flag_queue_pairs(adapter, max_combined);




  return igb_reinit_queues(adapter);
 }

 return 0;
}
