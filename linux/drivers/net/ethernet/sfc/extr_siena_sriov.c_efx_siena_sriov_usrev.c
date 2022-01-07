
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siena_nic_data {TYPE_1__* vfdi_channel; } ;
struct efx_nic {struct siena_nic_data* nic_data; } ;
typedef int efx_oword_t ;
struct TYPE_2__ {int channel; } ;


 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,int ) ;
 int FRF_CZ_DFLT_EVQ ;
 int FRF_CZ_USREV_DIS ;
 int FR_CZ_USR_EV_CFG ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

__attribute__((used)) static void efx_siena_sriov_usrev(struct efx_nic *efx, bool enabled)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 efx_oword_t reg;

 EFX_POPULATE_OWORD_2(reg,
        FRF_CZ_USREV_DIS, enabled ? 0 : 1,
        FRF_CZ_DFLT_EVQ, nic_data->vfdi_channel->channel);
 efx_writeo(efx, &reg, FR_CZ_USR_EV_CFG);
}
