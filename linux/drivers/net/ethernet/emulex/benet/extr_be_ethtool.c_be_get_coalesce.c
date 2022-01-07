
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int use_adaptive_tx_coalesce; int use_adaptive_rx_coalesce; int tx_coalesce_usecs_low; int tx_coalesce_usecs_high; int tx_coalesce_usecs; int rx_coalesce_usecs_low; int rx_coalesce_usecs_high; int rx_coalesce_usecs; } ;
struct be_aic_obj {int min_eqd; int max_eqd; int prev_eqd; } ;
struct be_adapter {int aic_enabled; struct be_aic_obj* aic_obj; } ;


 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_coalesce(struct net_device *netdev,
      struct ethtool_coalesce *et)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct be_aic_obj *aic = &adapter->aic_obj[0];

 et->rx_coalesce_usecs = aic->prev_eqd;
 et->rx_coalesce_usecs_high = aic->max_eqd;
 et->rx_coalesce_usecs_low = aic->min_eqd;

 et->tx_coalesce_usecs = aic->prev_eqd;
 et->tx_coalesce_usecs_high = aic->max_eqd;
 et->tx_coalesce_usecs_low = aic->min_eqd;

 et->use_adaptive_rx_coalesce = adapter->aic_enabled;
 et->use_adaptive_tx_coalesce = adapter->aic_enabled;

 return 0;
}
