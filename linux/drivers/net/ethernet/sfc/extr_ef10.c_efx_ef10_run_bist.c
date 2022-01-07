
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int net_dev; } ;


 int drv ;
 int efx_ef10_poll_bist (struct efx_nic*) ;
 int efx_ef10_start_bist (struct efx_nic*,int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ) ;

__attribute__((used)) static int efx_ef10_run_bist(struct efx_nic *efx, u32 bist_type)
{
 int rc;

 netif_dbg(efx, drv, efx->net_dev, "starting BIST type %u\n", bist_type);

 rc = efx_ef10_start_bist(efx, bist_type);
 if (rc != 0)
  return rc;

 return efx_ef10_poll_bist(efx);
}
