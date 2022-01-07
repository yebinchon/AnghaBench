
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int supported_cap; } ;



u32 efx_mcdi_phy_get_caps(struct efx_nic *efx)
{
 struct efx_mcdi_phy_data *phy_data = efx->phy_data;

 return phy_data->supported_cap;
}
