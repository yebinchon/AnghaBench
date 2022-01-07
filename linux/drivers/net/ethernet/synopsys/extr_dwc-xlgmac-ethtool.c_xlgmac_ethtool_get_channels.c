
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int tx_q_count; int rx_q_count; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {int tx_count; int rx_count; void* max_tx; void* max_rx; } ;


 void* XLGMAC_MAX_DMA_CHANNELS ;
 struct xlgmac_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xlgmac_ethtool_get_channels(struct net_device *netdev,
     struct ethtool_channels *channel)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);

 channel->max_rx = XLGMAC_MAX_DMA_CHANNELS;
 channel->max_tx = XLGMAC_MAX_DMA_CHANNELS;
 channel->rx_count = pdata->rx_q_count;
 channel->tx_count = pdata->tx_q_count;
}
