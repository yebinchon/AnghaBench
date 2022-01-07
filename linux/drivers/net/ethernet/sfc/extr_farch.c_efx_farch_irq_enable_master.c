
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
struct efx_nic {TYPE_1__ irq_status; } ;
typedef int efx_oword_t ;


 int EFX_ZERO_OWORD (int ) ;
 int efx_farch_interrupts (struct efx_nic*,int,int) ;
 int wmb () ;

void efx_farch_irq_enable_master(struct efx_nic *efx)
{
 EFX_ZERO_OWORD(*((efx_oword_t *) efx->irq_status.addr));
 wmb();

 efx_farch_interrupts(efx, 1, 0);
}
