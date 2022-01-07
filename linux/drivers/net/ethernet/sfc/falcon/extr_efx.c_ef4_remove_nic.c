
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* type; int net_dev; } ;
struct TYPE_2__ {int (* remove ) (struct ef4_nic*) ;} ;


 int drv ;
 int ef4_remove_interrupts (struct ef4_nic*) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*) ;
 int stub1 (struct ef4_nic*) ;

__attribute__((used)) static void ef4_remove_nic(struct ef4_nic *efx)
{
 netif_dbg(efx, drv, efx->net_dev, "destroying NIC\n");

 ef4_remove_interrupts(efx);
 efx->type->remove(efx);
}
