
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {scalar_t__ state; scalar_t__ mode; int wq; } ;


 int ETIMEDOUT ;
 scalar_t__ MCDI_MODE_POLL ;
 int MCDI_RPC_TIMEOUT ;
 scalar_t__ MCDI_STATE_COMPLETED ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_poll (struct efx_nic*) ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int efx_mcdi_await_completion(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);

 if (wait_event_timeout(mcdi->wq, mcdi->state == MCDI_STATE_COMPLETED,
          MCDI_RPC_TIMEOUT) == 0)
  return -ETIMEDOUT;
 if (mcdi->mode == MCDI_MODE_POLL)
  return efx_mcdi_poll(efx);

 return 0;
}
