
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_modinfo {int eeprom_len; int type; } ;
struct efx_nic {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8079_LEN ;
 int ETH_MODULE_SFF_8436 ;
 int ETH_MODULE_SFF_8436_LEN ;
 int ETH_MODULE_SFF_8472 ;
 int ETH_MODULE_SFF_8472_LEN ;


 int SFF_DIAG_ADDR_CHANGE ;
 int efx_mcdi_phy_diag_type (struct efx_nic*) ;
 int efx_mcdi_phy_module_type (struct efx_nic*) ;
 int efx_mcdi_phy_sff_8472_level (struct efx_nic*) ;

__attribute__((used)) static int efx_mcdi_phy_get_module_info(struct efx_nic *efx,
     struct ethtool_modinfo *modinfo)
{
 int sff_8472_level;
 int diag_type;

 switch (efx_mcdi_phy_module_type(efx)) {
 case 128:
  sff_8472_level = efx_mcdi_phy_sff_8472_level(efx);


  if (sff_8472_level < 0)
   return -EOPNOTSUPP;




  diag_type = efx_mcdi_phy_diag_type(efx);

  if ((sff_8472_level == 0) ||
      (diag_type & SFF_DIAG_ADDR_CHANGE)) {
   modinfo->type = ETH_MODULE_SFF_8079;
   modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
  } else {
   modinfo->type = ETH_MODULE_SFF_8472;
   modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
  }
  break;

 case 129:
  modinfo->type = ETH_MODULE_SFF_8436;
  modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
  break;

 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
