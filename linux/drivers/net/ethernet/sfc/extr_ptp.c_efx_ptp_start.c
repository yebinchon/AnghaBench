
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_ptp_data {int reset_required; scalar_t__ current_adjfreq; scalar_t__ evt_frag_idx; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; } ;


 int efx_ptp_enable (struct efx_nic*) ;
 int efx_ptp_insert_multicast_filters (struct efx_nic*) ;
 int efx_ptp_remove_multicast_filters (struct efx_nic*) ;

__attribute__((used)) static int efx_ptp_start(struct efx_nic *efx)
{
 struct efx_ptp_data *ptp = efx->ptp_data;
 int rc;

 ptp->reset_required = 0;

 rc = efx_ptp_insert_multicast_filters(efx);
 if (rc)
  return rc;

 rc = efx_ptp_enable(efx);
 if (rc != 0)
  goto fail;

 ptp->evt_frag_idx = 0;
 ptp->current_adjfreq = 0;

 return 0;

fail:
 efx_ptp_remove_multicast_filters(efx);
 return rc;
}
