
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_farch_interrupts (struct efx_nic*,int,int) ;

void efx_farch_irq_disable_master(struct efx_nic *efx)
{

 efx_farch_interrupts(efx, 0, 0);
}
