
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int * nic_data; int irq_status; } ;


 int RESET_TYPE_ALL ;
 int efx_mcdi_detach (struct efx_nic*) ;
 int efx_mcdi_fini (struct efx_nic*) ;
 int efx_mcdi_mon_remove (struct efx_nic*) ;
 int efx_mcdi_reset (struct efx_nic*,int ) ;
 int efx_nic_free_buffer (struct efx_nic*,int *) ;
 int kfree (int *) ;

__attribute__((used)) static void siena_remove_nic(struct efx_nic *efx)
{
 efx_mcdi_mon_remove(efx);

 efx_nic_free_buffer(efx, &efx->irq_status);

 efx_mcdi_reset(efx, RESET_TYPE_ALL);

 efx_mcdi_detach(efx);
 efx_mcdi_fini(efx);


 kfree(efx->nic_data);
 efx->nic_data = ((void*)0);
}
