
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int (* module_eeprom ) (struct xgbe_prv_data*,struct ethtool_eeprom*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {TYPE_2__ phy_if; } ;
struct ethtool_eeprom {int dummy; } ;


 int ENXIO ;
 int stub1 (struct xgbe_prv_data*,struct ethtool_eeprom*,int *) ;

__attribute__((used)) static int xgbe_phy_module_eeprom(struct xgbe_prv_data *pdata,
      struct ethtool_eeprom *eeprom, u8 *data)
{
 if (!pdata->phy_if.phy_impl.module_eeprom)
  return -ENXIO;

 return pdata->phy_if.phy_impl.module_eeprom(pdata, eeprom, data);
}
