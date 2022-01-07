
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int rx_ch_cnt; unsigned int tx_ch_cnt; } ;
struct xgbe_prv_data {unsigned int rx_max_channel_count; unsigned int channel_irq_count; unsigned int tx_max_channel_count; unsigned int tx_max_q_count; unsigned int rx_ring_count; unsigned int tx_ring_count; scalar_t__ new_tx_ring_count; scalar_t__ new_rx_ring_count; TYPE_1__ hw_feat; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {unsigned int max_combined; unsigned int max_rx; unsigned int max_tx; unsigned int combined_count; unsigned int rx_count; unsigned int tx_count; } ;


 unsigned int min (unsigned int,unsigned int) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xgbe_get_channels(struct net_device *netdev,
         struct ethtool_channels *channels)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 unsigned int rx, tx, combined;







 rx = min(pdata->hw_feat.rx_ch_cnt, pdata->rx_max_channel_count);
 rx = min(rx, pdata->channel_irq_count);
 tx = min(pdata->hw_feat.tx_ch_cnt, pdata->tx_max_channel_count);
 tx = min(tx, pdata->channel_irq_count);
 tx = min(tx, pdata->tx_max_q_count);

 combined = min(rx, tx);

 channels->max_combined = combined;
 channels->max_rx = rx ? rx - 1 : 0;
 channels->max_tx = tx ? tx - 1 : 0;


 rx = pdata->new_rx_ring_count ? : pdata->rx_ring_count;
 tx = pdata->new_tx_ring_count ? : pdata->tx_ring_count;

 combined = min(rx, tx);
 rx -= combined;
 tx -= combined;

 channels->combined_count = combined;
 channels->rx_count = rx;
 channels->tx_count = tx;
}
