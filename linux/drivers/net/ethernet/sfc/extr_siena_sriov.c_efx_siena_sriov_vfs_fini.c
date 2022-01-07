
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siena_vf {scalar_t__ evq0_count; scalar_t__ peer_page_count; int * peer_page_addrs; int buf; } ;
struct siena_nic_data {struct siena_vf* vf; } ;
struct efx_nic {unsigned int vf_count; struct siena_nic_data* nic_data; } ;


 int efx_nic_free_buffer (struct efx_nic*,int *) ;
 int kfree (int *) ;

__attribute__((used)) static void efx_siena_sriov_vfs_fini(struct efx_nic *efx)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 struct siena_vf *vf;
 unsigned int pos;

 for (pos = 0; pos < efx->vf_count; ++pos) {
  vf = nic_data->vf + pos;

  efx_nic_free_buffer(efx, &vf->buf);
  kfree(vf->peer_page_addrs);
  vf->peer_page_addrs = ((void*)0);
  vf->peer_page_count = 0;

  vf->evq0_count = 0;
 }
}
