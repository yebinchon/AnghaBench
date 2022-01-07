
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_nic {TYPE_2__* type; TYPE_1__* phy_op; scalar_t__ port_initialized; int mac_lock; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_4__ {int (* fini ) (struct ef4_nic*) ;} ;
struct TYPE_3__ {int (* fini ) (struct ef4_nic*) ;} ;


 int EF4_ASSERT_RESET_SERIALISED (struct ef4_nic*) ;
 int RESET_TYPE_DATAPATH ;
 int RESET_TYPE_INVISIBLE ;
 int ef4_disable_interrupts (struct ef4_nic*) ;
 int ef4_stop_all (struct ef4_nic*) ;
 int mutex_lock (int *) ;
 int stub1 (struct ef4_nic*) ;
 int stub2 (struct ef4_nic*) ;

void ef4_reset_down(struct ef4_nic *efx, enum reset_type method)
{
 EF4_ASSERT_RESET_SERIALISED(efx);

 ef4_stop_all(efx);
 ef4_disable_interrupts(efx);

 mutex_lock(&efx->mac_lock);
 if (efx->port_initialized && method != RESET_TYPE_INVISIBLE &&
     method != RESET_TYPE_DATAPATH)
  efx->phy_op->fini(efx);
 efx->type->fini(efx);
}
