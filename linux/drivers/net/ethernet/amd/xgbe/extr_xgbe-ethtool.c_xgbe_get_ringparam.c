
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int tx_desc_count; int rx_desc_count; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int XGBE_RX_DESC_CNT_MAX ;
 int XGBE_TX_DESC_CNT_MAX ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xgbe_get_ringparam(struct net_device *netdev,
          struct ethtool_ringparam *ringparam)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 ringparam->rx_max_pending = XGBE_RX_DESC_CNT_MAX;
 ringparam->tx_max_pending = XGBE_TX_DESC_CNT_MAX;
 ringparam->rx_pending = pdata->rx_desc_count;
 ringparam->tx_pending = pdata->tx_desc_count;
}
