
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* module_eeprom ) (struct xgbe_prv_data*,struct ethtool_eeprom*,int *) ;} ;
struct xgbe_prv_data {TYPE_1__ phy_if; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int dummy; } ;


 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int stub1 (struct xgbe_prv_data*,struct ethtool_eeprom*,int *) ;

__attribute__((used)) static int xgbe_get_module_eeprom(struct net_device *netdev,
      struct ethtool_eeprom *eeprom, u8 *data)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 return pdata->phy_if.module_eeprom(pdata, eeprom, data);
}
