
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct efx_nic {int net_dev; } ;
struct efx_mcdi_iface {int state; } ;
typedef int const efx_dword_t ;


 int EINTR ;
 int EINVAL ;
 int EIO ;
 int EPERM ;
 int MCDI_STATE_RUNNING_SYNC ;
 int RESET_TYPE_MC_FAILURE ;
 int WARN_ON (int) ;
 int _efx_mcdi_rpc_finish (struct efx_nic*,unsigned int,size_t,int const*,size_t,size_t*,int,scalar_t__*,int*) ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_proxy_wait (struct efx_nic*,scalar_t__,int) ;
 int efx_mcdi_release (struct efx_mcdi_iface*) ;
 int efx_mcdi_rpc_start (struct efx_nic*,unsigned int,int const*,size_t) ;
 int efx_mcdi_send_request (struct efx_nic*,unsigned int,int const*,size_t) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int err ;
 int hw ;
 int netif_cond_dbg (struct efx_nic*,int ,int ,int,int ,char*,unsigned int,int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,scalar_t__) ;

__attribute__((used)) static int _efx_mcdi_rpc(struct efx_nic *efx, unsigned int cmd,
    const efx_dword_t *inbuf, size_t inlen,
    efx_dword_t *outbuf, size_t outlen,
    size_t *outlen_actual, bool quiet, int *raw_rc)
{
 u32 proxy_handle = 0;
 int rc;

 if (inbuf && inlen && (inbuf == outbuf)) {

  WARN_ON(1);
  return -EINVAL;
 }

 rc = efx_mcdi_rpc_start(efx, cmd, inbuf, inlen);
 if (rc)
  return rc;

 rc = _efx_mcdi_rpc_finish(efx, cmd, inlen, outbuf, outlen,
      outlen_actual, quiet, &proxy_handle, raw_rc);

 if (proxy_handle) {




  struct efx_mcdi_iface *mcdi = efx_mcdi(efx);

  netif_dbg(efx, hw, efx->net_dev,
     "MCDI waiting for proxy auth %d\n",
     proxy_handle);
  rc = efx_mcdi_proxy_wait(efx, proxy_handle, quiet);

  if (rc == 0) {
   netif_dbg(efx, hw, efx->net_dev,
      "MCDI proxy retry %d\n", proxy_handle);


   mcdi->state = MCDI_STATE_RUNNING_SYNC;
   efx_mcdi_send_request(efx, cmd, inbuf, inlen);

   rc = _efx_mcdi_rpc_finish(efx, cmd, inlen,
        outbuf, outlen, outlen_actual,
        quiet, ((void*)0), raw_rc);
  } else {
   netif_cond_dbg(efx, hw, efx->net_dev, rc == -EPERM, err,
           "MC command 0x%x failed after proxy auth rc=%d\n",
           cmd, rc);

   if (rc == -EINTR || rc == -EIO)
    efx_schedule_reset(efx, RESET_TYPE_MC_FAILURE);
   efx_mcdi_release(mcdi);
  }
 }

 return rc;
}
