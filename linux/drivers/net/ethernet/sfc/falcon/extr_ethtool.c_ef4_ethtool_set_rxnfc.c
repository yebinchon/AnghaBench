
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;
struct ef4_nic {int dummy; } ;


 int EF4_FILTER_PRI_MANUAL ;
 int EOPNOTSUPP ;


 int ef4_ethtool_set_class_rule (struct ef4_nic*,TYPE_1__*) ;
 scalar_t__ ef4_filter_get_rx_id_limit (struct ef4_nic*) ;
 int ef4_filter_remove_id_safe (struct ef4_nic*,int ,int ) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ef4_ethtool_set_rxnfc(struct net_device *net_dev,
     struct ethtool_rxnfc *info)
{
 struct ef4_nic *efx = netdev_priv(net_dev);

 if (ef4_filter_get_rx_id_limit(efx) == 0)
  return -EOPNOTSUPP;

 switch (info->cmd) {
 case 128:
  return ef4_ethtool_set_class_rule(efx, &info->fs);

 case 129:
  return ef4_filter_remove_id_safe(efx, EF4_FILTER_PRI_MANUAL,
       info->fs.location);

 default:
  return -EOPNOTSUPP;
 }
}
