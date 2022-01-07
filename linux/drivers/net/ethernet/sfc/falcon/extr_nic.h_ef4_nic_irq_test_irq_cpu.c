
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int last_irq_cpu; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline int ef4_nic_irq_test_irq_cpu(struct ef4_nic *efx)
{
 return READ_ONCE(efx->last_irq_cpu);
}
