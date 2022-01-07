
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int last_irq_cpu; TYPE_1__* type; } ;
struct TYPE_2__ {int (* irq_test_generate ) (struct ef4_nic*) ;} ;


 int smp_wmb () ;
 int stub1 (struct ef4_nic*) ;

int ef4_nic_irq_test_start(struct ef4_nic *efx)
{
 efx->last_irq_cpu = -1;
 smp_wmb();
 return efx->type->irq_test_generate(efx);
}
