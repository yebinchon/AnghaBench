
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siena_vf {scalar_t__ txq_count; int txq_lock; int tx_filter_mode; } ;
struct siena_nic_data {struct siena_vf* vf; } ;
struct efx_nic {int vf_init_count; struct siena_nic_data* nic_data; } ;


 int EBUSY ;
 int EINVAL ;
 int VF_TX_FILTER_OFF ;
 int VF_TX_FILTER_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int efx_siena_sriov_set_vf_spoofchk(struct efx_nic *efx, int vf_i,
        bool spoofchk)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 struct siena_vf *vf;
 int rc;

 if (vf_i >= efx->vf_init_count)
  return -EINVAL;
 vf = nic_data->vf + vf_i;

 mutex_lock(&vf->txq_lock);
 if (vf->txq_count == 0) {
  vf->tx_filter_mode =
   spoofchk ? VF_TX_FILTER_ON : VF_TX_FILTER_OFF;
  rc = 0;
 } else {

  rc = -EBUSY;
 }
 mutex_unlock(&vf->txq_lock);
 return rc;
}
