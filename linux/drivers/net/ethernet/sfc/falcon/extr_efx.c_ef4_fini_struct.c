
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int * workqueue; int vpd_sn; int * channel; } ;


 int EF4_MAX_CHANNELS ;
 int destroy_workqueue (int *) ;
 int kfree (int ) ;

__attribute__((used)) static void ef4_fini_struct(struct ef4_nic *efx)
{
 int i;

 for (i = 0; i < EF4_MAX_CHANNELS; i++)
  kfree(efx->channel[i]);

 kfree(efx->vpd_sn);

 if (efx->workqueue) {
  destroy_workqueue(efx->workqueue);
  efx->workqueue = ((void*)0);
 }
}
