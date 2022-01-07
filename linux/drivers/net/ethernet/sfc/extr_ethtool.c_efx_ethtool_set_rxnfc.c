
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; int rss_context; } ;
struct efx_nic {int dummy; } ;


 int EFX_FILTER_PRI_MANUAL ;
 int EOPNOTSUPP ;


 int efx_ethtool_set_class_rule (struct efx_nic*,TYPE_1__*,int ) ;
 scalar_t__ efx_filter_get_rx_id_limit (struct efx_nic*) ;
 int efx_filter_remove_id_safe (struct efx_nic*,int ,int ) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int efx_ethtool_set_rxnfc(struct net_device *net_dev,
     struct ethtool_rxnfc *info)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 if (efx_filter_get_rx_id_limit(efx) == 0)
  return -EOPNOTSUPP;

 switch (info->cmd) {
 case 128:
  return efx_ethtool_set_class_rule(efx, &info->fs,
        info->rss_context);

 case 129:
  return efx_filter_remove_id_safe(efx, EFX_FILTER_PRI_MANUAL,
       info->fs.location);

 default:
  return -EOPNOTSUPP;
 }
}
