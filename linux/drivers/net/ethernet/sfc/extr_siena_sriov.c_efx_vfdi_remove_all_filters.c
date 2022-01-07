
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siena_vf {int rx_filtering; struct efx_nic* efx; } ;
struct siena_nic_data {int peer_work; } ;
struct efx_nic {struct siena_nic_data* nic_data; } ;


 int VFDI_RC_SUCCESS ;
 int efx_siena_sriov_reset_rx_filter (struct siena_vf*) ;
 int queue_work (int ,int *) ;
 int vfdi_workqueue ;

__attribute__((used)) static int efx_vfdi_remove_all_filters(struct siena_vf *vf)
{
 struct efx_nic *efx = vf->efx;
 struct siena_nic_data *nic_data = efx->nic_data;

 vf->rx_filtering = 0;
 efx_siena_sriov_reset_rx_filter(vf);
 queue_work(vfdi_workqueue, &nic_data->peer_work);

 return VFDI_RC_SUCCESS;
}
