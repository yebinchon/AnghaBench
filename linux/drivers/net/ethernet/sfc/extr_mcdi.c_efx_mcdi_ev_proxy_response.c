
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {scalar_t__ state; int proxy_rx_wq; int proxy_rx_handle; int proxy_rx_status; } ;


 scalar_t__ MCDI_STATE_PROXY_WAIT ;
 int WARN_ON (int) ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_errno (int) ;
 int wake_up (int *) ;
 int wmb () ;

__attribute__((used)) static void efx_mcdi_ev_proxy_response(struct efx_nic *efx,
           u32 handle, int status)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);

 WARN_ON(mcdi->state != MCDI_STATE_PROXY_WAIT);

 mcdi->proxy_rx_status = efx_mcdi_errno(status);



 wmb();
 mcdi->proxy_rx_handle = handle;
 wake_up(&mcdi->proxy_rx_wq);
}
