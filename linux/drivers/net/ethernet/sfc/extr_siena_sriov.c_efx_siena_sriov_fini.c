
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siena_vf {int reset_work; int req; } ;
struct siena_nic_data {int vfdi_status; struct siena_vf* vf; int peer_work; TYPE_1__* vfdi_channel; } ;
struct efx_nic {scalar_t__ vf_init_count; unsigned int vf_count; int pci_dev; struct siena_nic_data* nic_data; } ;
struct TYPE_2__ {int enabled; } ;


 int BUG_ON (int ) ;
 int cancel_work_sync (int *) ;
 int efx_nic_free_buffer (struct efx_nic*,int *) ;
 int efx_siena_sriov_cmd (struct efx_nic*,int,int *,int *) ;
 int efx_siena_sriov_free_local (struct efx_nic*) ;
 int efx_siena_sriov_usrev (struct efx_nic*,int) ;
 int efx_siena_sriov_vfs_fini (struct efx_nic*) ;
 int kfree (struct siena_vf*) ;
 int pci_disable_sriov (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void efx_siena_sriov_fini(struct efx_nic *efx)
{
 struct siena_vf *vf;
 unsigned int pos;
 struct siena_nic_data *nic_data = efx->nic_data;

 if (efx->vf_init_count == 0)
  return;


 BUG_ON(nic_data->vfdi_channel->enabled);
 efx_siena_sriov_usrev(efx, 0);
 rtnl_lock();
 efx->vf_init_count = 0;
 rtnl_unlock();


 for (pos = 0; pos < efx->vf_count; ++pos) {
  vf = nic_data->vf + pos;
  cancel_work_sync(&vf->req);
  cancel_work_sync(&vf->reset_work);
 }
 cancel_work_sync(&nic_data->peer_work);

 pci_disable_sriov(efx->pci_dev);


 efx_siena_sriov_vfs_fini(efx);
 efx_siena_sriov_free_local(efx);
 kfree(nic_data->vf);
 efx_nic_free_buffer(efx, &nic_data->vfdi_status);
 efx_siena_sriov_cmd(efx, 0, ((void*)0), ((void*)0));
}
