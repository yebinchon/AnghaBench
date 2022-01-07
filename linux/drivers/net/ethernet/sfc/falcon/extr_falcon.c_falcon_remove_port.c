
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int stats_buffer; TYPE_1__* phy_op; } ;
struct TYPE_2__ {int (* remove ) (struct ef4_nic*) ;} ;


 int ef4_nic_free_buffer (struct ef4_nic*,int *) ;
 int stub1 (struct ef4_nic*) ;

__attribute__((used)) static void falcon_remove_port(struct ef4_nic *efx)
{
 efx->phy_op->remove(efx);
 ef4_nic_free_buffer(efx, &efx->stats_buffer);
}
