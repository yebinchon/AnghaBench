
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct efx_nic {int net_dev; } ;
struct efx_mcdi_iface {scalar_t__ proxy_rx_handle; int proxy_rx_status; int proxy_rx_wq; } ;


 int EINTR ;
 int EINVAL ;
 int ETIMEDOUT ;
 int MCDI_RPC_TIMEOUT ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,scalar_t__) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,scalar_t__,scalar_t__) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int efx_mcdi_proxy_wait(struct efx_nic *efx, u32 handle, bool quiet)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);
 int rc;


 rc = wait_event_timeout(mcdi->proxy_rx_wq,
    mcdi->proxy_rx_handle != 0 ||
    mcdi->proxy_rx_status == -EINTR,
    MCDI_RPC_TIMEOUT);

 if (rc <= 0) {
  netif_dbg(efx, hw, efx->net_dev,
     "MCDI proxy timeout %d\n", handle);
  return -ETIMEDOUT;
 } else if (mcdi->proxy_rx_handle != handle) {
  netif_warn(efx, hw, efx->net_dev,
      "MCDI proxy unexpected handle %d (expected %d)\n",
      mcdi->proxy_rx_handle, handle);
  return -EINVAL;
 }

 return mcdi->proxy_rx_status;
}
