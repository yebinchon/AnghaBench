
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;
struct efx_mcdi_iface {int mode; } ;


 scalar_t__ MCDI_MODE_FAIL ;
 int RESET_TYPE_MCDI_TIMEOUT ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 scalar_t__ xchg (int *,scalar_t__) ;

__attribute__((used)) static void efx_mcdi_abandon(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);

 if (xchg(&mcdi->mode, MCDI_MODE_FAIL) == MCDI_MODE_FAIL)
  return;
 netif_dbg(efx, hw, efx->net_dev, "MCDI is timing out; trying to recover\n");
 efx_schedule_reset(efx, RESET_TYPE_MCDI_TIMEOUT);
}
