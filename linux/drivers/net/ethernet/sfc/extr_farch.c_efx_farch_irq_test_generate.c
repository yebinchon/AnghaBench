
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_farch_interrupts (struct efx_nic*,int,int) ;

int efx_farch_irq_test_generate(struct efx_nic *efx)
{
 efx_farch_interrupts(efx, 1, 1);
 return 0;
}
