
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* type; int net_dev; } ;
struct TYPE_2__ {int (* init ) (struct ef4_nic*) ;int (* fini ) (struct ef4_nic*) ;} ;


 int ef4_enable_interrupts (struct ef4_nic*) ;
 int ef4_fini_napi (struct ef4_nic*) ;
 int ef4_fini_port (struct ef4_nic*) ;
 int ef4_init_napi (struct ef4_nic*) ;
 int ef4_init_port (struct ef4_nic*) ;
 int ef4_nic_fini_interrupt (struct ef4_nic*) ;
 int ef4_nic_init_interrupt (struct ef4_nic*) ;
 int ef4_probe_all (struct ef4_nic*) ;
 int ef4_remove_all (struct ef4_nic*) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int probe ;
 int stub1 (struct ef4_nic*) ;
 int stub2 (struct ef4_nic*) ;

__attribute__((used)) static int ef4_pci_probe_main(struct ef4_nic *efx)
{
 int rc;


 rc = ef4_probe_all(efx);
 if (rc)
  goto fail1;

 ef4_init_napi(efx);

 rc = efx->type->init(efx);
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "failed to initialise NIC\n");
  goto fail3;
 }

 rc = ef4_init_port(efx);
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "failed to initialise port\n");
  goto fail4;
 }

 rc = ef4_nic_init_interrupt(efx);
 if (rc)
  goto fail5;
 rc = ef4_enable_interrupts(efx);
 if (rc)
  goto fail6;

 return 0;

 fail6:
 ef4_nic_fini_interrupt(efx);
 fail5:
 ef4_fini_port(efx);
 fail4:
 efx->type->fini(efx);
 fail3:
 ef4_fini_napi(efx);
 ef4_remove_all(efx);
 fail1:
 return rc;
}
