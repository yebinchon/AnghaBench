
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct falcon_nic_data {scalar_t__ xmac_poll_required; } ;
struct TYPE_2__ {int up; } ;
struct ef4_nic {TYPE_1__ link_state; struct falcon_nic_data* nic_data; } ;
typedef int ef4_oword_t ;


 scalar_t__ EF4_REV_FALCON_B0 ;
 int FR_AB_XM_MGT_INT_MSK ;
 scalar_t__ LOOPBACK_INTERNAL (struct ef4_nic*) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static void falcon_ack_status_intr(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 ef4_oword_t reg;

 if ((ef4_nic_rev(efx) != EF4_REV_FALCON_B0) || LOOPBACK_INTERNAL(efx))
  return;


 if (!efx->link_state.up)
  return;



 if (nic_data->xmac_poll_required)
  return;

 ef4_reado(efx, &reg, FR_AB_XM_MGT_INT_MSK);
}
