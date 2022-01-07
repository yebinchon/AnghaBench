
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;


 int MC_CMD_WOL_TYPE_MAGIC ;
 int efx_mcdi_wol_filter_set (struct efx_nic*,int ,int const*,int*) ;

int
efx_mcdi_wol_filter_set_magic(struct efx_nic *efx, const u8 *mac, int *id_out)
{
 return efx_mcdi_wol_filter_set(efx, MC_CMD_WOL_TYPE_MAGIC, mac, id_out);
}
