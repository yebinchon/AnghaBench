
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {scalar_t__ state; TYPE_1__* type; int reset_work; } ;
struct TYPE_2__ {int (* fini ) (struct ef4_nic*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ STATE_READY ;
 int cancel_work_sync (int *) ;
 int ef4_disable_interrupts (struct ef4_nic*) ;
 int ef4_fini_napi (struct ef4_nic*) ;
 int ef4_fini_port (struct ef4_nic*) ;
 int ef4_nic_fini_interrupt (struct ef4_nic*) ;
 int ef4_remove_all (struct ef4_nic*) ;
 int stub1 (struct ef4_nic*) ;

__attribute__((used)) static void ef4_pci_remove_main(struct ef4_nic *efx)
{



 BUG_ON(efx->state == STATE_READY);
 cancel_work_sync(&efx->reset_work);

 ef4_disable_interrupts(efx);
 ef4_nic_fini_interrupt(efx);
 ef4_fini_port(efx);
 efx->type->fini(efx);
 ef4_fini_napi(efx);
 ef4_remove_all(efx);
}
