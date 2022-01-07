
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int tx_queues; int rx_queues; int max_queues; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {int tx_count; int rx_count; int max_tx; int max_rx; } ;


 int memset (struct ethtool_channels*,int ,int) ;
 struct nicvf* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nicvf_get_channels(struct net_device *dev,
          struct ethtool_channels *channel)
{
 struct nicvf *nic = netdev_priv(dev);

 memset(channel, 0, sizeof(*channel));

 channel->max_rx = nic->max_queues;
 channel->max_tx = nic->max_queues;

 channel->rx_count = nic->rx_queues;
 channel->tx_count = nic->tx_queues;
}
