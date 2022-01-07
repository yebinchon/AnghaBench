
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int MC_CMD_WOL_FILTER_RESET ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int ,int *,int ,int *) ;

int efx_mcdi_wol_filter_reset(struct efx_nic *efx)
{
 int rc;

 rc = efx_mcdi_rpc(efx, MC_CMD_WOL_FILTER_RESET, ((void*)0), 0, ((void*)0), 0, ((void*)0));
 return rc;
}
