
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_ptp_data {int rxfilter_installed; int rxfilter_event; int rxfilter_general; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; } ;


 int EFX_FILTER_PRI_REQUIRED ;
 int efx_filter_remove_id_safe (struct efx_nic*,int ,int ) ;

__attribute__((used)) static void efx_ptp_remove_multicast_filters(struct efx_nic *efx)
{
 struct efx_ptp_data *ptp = efx->ptp_data;

 if (ptp->rxfilter_installed) {
  efx_filter_remove_id_safe(efx, EFX_FILTER_PRI_REQUIRED,
       ptp->rxfilter_general);
  efx_filter_remove_id_safe(efx, EFX_FILTER_PRI_REQUIRED,
       ptp->rxfilter_event);
  ptp->rxfilter_installed = 0;
 }
}
