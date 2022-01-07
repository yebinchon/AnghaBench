
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
struct ef4_nic {TYPE_1__ irq_status; } ;
typedef int ef4_oword_t ;


 int EF4_ZERO_OWORD (int ) ;
 int ef4_farch_interrupts (struct ef4_nic*,int,int) ;
 int wmb () ;

void ef4_farch_irq_enable_master(struct ef4_nic *efx)
{
 EF4_ZERO_OWORD(*((ef4_oword_t *) efx->irq_status.addr));
 wmb();

 ef4_farch_interrupts(efx, 1, 0);
}
