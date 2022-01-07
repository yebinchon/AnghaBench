
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int must_check_datapath_caps; scalar_t__* stats; } ;


 size_t EF10_STAT_port_rx_bad_bytes ;
 int efx_ef10_reset_mc_allocations (struct efx_nic*) ;

__attribute__((used)) static void efx_ef10_mcdi_reboot_detected(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;


 efx_ef10_reset_mc_allocations(efx);


 nic_data->must_check_datapath_caps = 1;




 nic_data->stats[EF10_STAT_port_rx_bad_bytes] = 0;
}
