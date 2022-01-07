
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int ef4_farch_interrupts (struct ef4_nic*,int,int) ;

void ef4_farch_irq_disable_master(struct ef4_nic *efx)
{

 ef4_farch_interrupts(efx, 0, 0);
}
