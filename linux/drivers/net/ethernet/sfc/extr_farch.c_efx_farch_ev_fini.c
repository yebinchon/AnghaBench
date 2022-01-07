
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct efx_channel {int eventq; int channel; struct efx_nic* efx; } ;
typedef int efx_oword_t ;
struct TYPE_2__ {int evq_ptr_tbl_base; } ;


 int EFX_ZERO_OWORD (int ) ;
 int FR_BZ_TIMER_TBL ;
 int efx_fini_special_buffer (struct efx_nic*,int *) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,int ) ;

void efx_farch_ev_fini(struct efx_channel *channel)
{
 efx_oword_t reg;
 struct efx_nic *efx = channel->efx;


 EFX_ZERO_OWORD(reg);
 efx_writeo_table(efx, &reg, efx->type->evq_ptr_tbl_base,
    channel->channel);
 efx_writeo_table(efx, &reg, FR_BZ_TIMER_TBL, channel->channel);


 efx_fini_special_buffer(efx, &channel->eventq);
}
