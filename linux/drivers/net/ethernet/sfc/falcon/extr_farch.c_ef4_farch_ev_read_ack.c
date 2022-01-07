
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* type; } ;
struct ef4_channel {int eventq_read_ptr; int eventq_mask; int channel; struct ef4_nic* efx; } ;
typedef int ef4_dword_t ;
struct TYPE_2__ {scalar_t__ evq_rptr_tbl_base; } ;


 int EF4_POPULATE_DWORD_1 (int ,int ,int) ;
 int FRF_AZ_EVQ_RPTR ;
 int FR_BZ_EVQ_RPTR_STEP ;
 int ef4_writed (struct ef4_nic*,int *,scalar_t__) ;

void ef4_farch_ev_read_ack(struct ef4_channel *channel)
{
 ef4_dword_t reg;
 struct ef4_nic *efx = channel->efx;

 EF4_POPULATE_DWORD_1(reg, FRF_AZ_EVQ_RPTR,
        channel->eventq_read_ptr & channel->eventq_mask);




 ef4_writed(efx, &reg,
     efx->type->evq_rptr_tbl_base +
     FR_BZ_EVQ_RPTR_STEP * channel->channel);
}
