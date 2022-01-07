
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct falcon_nic_data {int xmac_poll_required; } ;
struct TYPE_2__ {int up; } ;
struct ef4_nic {TYPE_1__ link_state; struct falcon_nic_data* nic_data; } ;


 int falcon_ack_status_intr (struct ef4_nic*) ;
 int falcon_xmac_link_ok_retry (struct ef4_nic*,int) ;

__attribute__((used)) static void falcon_poll_xmac(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;


 if (!efx->link_state.up || !nic_data->xmac_poll_required)
  return;

 nic_data->xmac_poll_required = !falcon_xmac_link_ok_retry(efx, 1);
 falcon_ack_status_intr(efx);
}
