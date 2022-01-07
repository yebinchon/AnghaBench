
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int * workqueue; int vpd_sn; int * channel; int rps_hash_table; } ;


 int EFX_MAX_CHANNELS ;
 int destroy_workqueue (int *) ;
 int kfree (int ) ;

__attribute__((used)) static void efx_fini_struct(struct efx_nic *efx)
{
 int i;





 for (i = 0; i < EFX_MAX_CHANNELS; i++)
  kfree(efx->channel[i]);

 kfree(efx->vpd_sn);

 if (efx->workqueue) {
  destroy_workqueue(efx->workqueue);
  efx->workqueue = ((void*)0);
 }
}
