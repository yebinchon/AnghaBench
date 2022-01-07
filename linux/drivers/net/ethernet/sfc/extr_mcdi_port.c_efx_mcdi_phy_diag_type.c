
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int SFF_DIAG_TYPE_OFFSET ;
 int efx_mcdi_phy_get_module_eeprom_byte (struct efx_nic*,int ,int ) ;

__attribute__((used)) static int efx_mcdi_phy_diag_type(struct efx_nic *efx)
{

 return efx_mcdi_phy_get_module_eeprom_byte(efx, 0,
         SFF_DIAG_TYPE_OFFSET);
}
