
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* type; } ;
struct ef4_channel {int eventq; int channel; struct ef4_nic* efx; } ;
typedef int ef4_oword_t ;
struct TYPE_2__ {int evq_ptr_tbl_base; } ;


 int EF4_ZERO_OWORD (int ) ;
 int ef4_fini_special_buffer (struct ef4_nic*,int *) ;
 int ef4_writeo_table (struct ef4_nic*,int *,int ,int ) ;

void ef4_farch_ev_fini(struct ef4_channel *channel)
{
 ef4_oword_t reg;
 struct ef4_nic *efx = channel->efx;


 EF4_ZERO_OWORD(reg);
 ef4_writeo_table(efx, &reg, efx->type->evq_ptr_tbl_base,
    channel->channel);


 ef4_fini_special_buffer(efx, &channel->eventq);
}
