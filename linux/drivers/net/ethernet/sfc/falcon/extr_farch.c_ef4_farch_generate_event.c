
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ef4_nic {int dummy; } ;
struct TYPE_6__ {scalar_t__* u32; } ;
typedef TYPE_1__ ef4_qword_t ;
struct TYPE_7__ {scalar_t__* u32; } ;
typedef TYPE_2__ ef4_oword_t ;


 int BUILD_BUG_ON (int) ;
 int EF4_SET_OWORD_FIELD (TYPE_2__,int ,unsigned int) ;
 scalar_t__ FRF_AZ_DRV_EV_DATA_LBN ;
 int FRF_AZ_DRV_EV_DATA_WIDTH ;
 int FRF_AZ_DRV_EV_QID ;
 int FR_AZ_DRV_EV ;
 int ef4_writeo (struct ef4_nic*,TYPE_2__*,int ) ;

void ef4_farch_generate_event(struct ef4_nic *efx, unsigned int evq,
         ef4_qword_t *event)
{
 ef4_oword_t drv_ev_reg;

 BUILD_BUG_ON(FRF_AZ_DRV_EV_DATA_LBN != 0 ||
       FRF_AZ_DRV_EV_DATA_WIDTH != 64);
 drv_ev_reg.u32[0] = event->u32[0];
 drv_ev_reg.u32[1] = event->u32[1];
 drv_ev_reg.u32[2] = 0;
 drv_ev_reg.u32[3] = 0;
 EF4_SET_OWORD_FIELD(drv_ev_reg, FRF_AZ_DRV_EV_QID, evq);
 ef4_writeo(efx, &drv_ev_reg, FR_AZ_DRV_EV);
}
