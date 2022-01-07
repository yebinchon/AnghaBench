
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_channels {int tx_count; int rx_count; int max_tx; int max_rx; } ;


 int SXGBE_MAX_RX_CHANNELS ;
 int SXGBE_MAX_TX_CHANNELS ;
 int SXGBE_RX_QUEUES ;
 int SXGBE_TX_QUEUES ;

__attribute__((used)) static void sxgbe_get_channels(struct net_device *dev,
          struct ethtool_channels *channel)
{
 channel->max_rx = SXGBE_MAX_RX_CHANNELS;
 channel->max_tx = SXGBE_MAX_TX_CHANNELS;
 channel->rx_count = SXGBE_RX_QUEUES;
 channel->tx_count = SXGBE_TX_QUEUES;
}
