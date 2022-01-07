
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_ef10_filter_sync_rx_mode (struct efx_nic*) ;
 int efx_mcdi_set_mac (struct efx_nic*) ;

__attribute__((used)) static int efx_ef10_mac_reconfigure(struct efx_nic *efx)
{
 efx_ef10_filter_sync_rx_mode(efx);

 return efx_mcdi_set_mac(efx);
}
