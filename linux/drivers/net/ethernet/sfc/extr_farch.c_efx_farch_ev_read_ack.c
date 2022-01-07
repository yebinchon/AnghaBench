
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct efx_channel {int eventq_read_ptr; int eventq_mask; int channel; struct efx_nic* efx; } ;
typedef int efx_dword_t ;
struct TYPE_2__ {scalar_t__ evq_rptr_tbl_base; } ;


 int EFX_POPULATE_DWORD_1 (int ,int ,int) ;
 int FRF_AZ_EVQ_RPTR ;
 int FR_BZ_EVQ_RPTR_STEP ;
 int efx_writed (struct efx_nic*,int *,scalar_t__) ;

void efx_farch_ev_read_ack(struct efx_channel *channel)
{
 efx_dword_t reg;
 struct efx_nic *efx = channel->efx;

 EFX_POPULATE_DWORD_1(reg, FRF_AZ_EVQ_RPTR,
        channel->eventq_read_ptr & channel->eventq_mask);




 efx_writed(efx, &reg,
     efx->type->evq_rptr_tbl_base +
     FR_BZ_EVQ_RPTR_STEP * channel->channel);
}
