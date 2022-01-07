
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_modinfo {int eeprom_len; int type; } ;
struct ef4_nic {int dummy; } ;


 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8079_LEN ;

__attribute__((used)) static int qt202x_phy_get_module_info(struct ef4_nic *efx,
          struct ethtool_modinfo *modinfo)
{
 modinfo->type = ETH_MODULE_SFF_8079;
 modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
 return 0;
}
