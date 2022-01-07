
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mcdi_iface {scalar_t__ state; int proxy_rx_wq; int proxy_rx_status; } ;


 int EINTR ;
 scalar_t__ MCDI_STATE_PROXY_WAIT ;
 int wake_up (int *) ;

__attribute__((used)) static void efx_mcdi_proxy_abort(struct efx_mcdi_iface *mcdi)
{
 if (mcdi->state == MCDI_STATE_PROXY_WAIT) {

  mcdi->proxy_rx_status = -EINTR;
  wake_up(&mcdi->proxy_rx_wq);
 }
}
