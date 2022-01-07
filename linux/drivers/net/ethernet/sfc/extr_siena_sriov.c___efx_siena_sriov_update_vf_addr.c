
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siena_vf {struct efx_nic* efx; } ;
struct siena_nic_data {int peer_work; } ;
struct efx_nic {struct siena_nic_data* nic_data; } ;


 int efx_siena_sriov_reset_rx_filter (struct siena_vf*) ;
 int efx_siena_sriov_reset_tx_filter (struct siena_vf*) ;
 int queue_work (int ,int *) ;
 int vfdi_workqueue ;

__attribute__((used)) static void __efx_siena_sriov_update_vf_addr(struct siena_vf *vf)
{
 struct efx_nic *efx = vf->efx;
 struct siena_nic_data *nic_data = efx->nic_data;

 efx_siena_sriov_reset_tx_filter(vf);
 efx_siena_sriov_reset_rx_filter(vf);
 queue_work(vfdi_workqueue, &nic_data->peer_work);
}
