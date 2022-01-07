
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int phy_mode; TYPE_1__* type; int mac_lock; } ;
typedef enum ef4_phy_mode { ____Placeholder_ef4_phy_mode } ef4_phy_mode ;
struct TYPE_2__ {int (* reconfigure_port ) (struct ef4_nic*) ;} ;


 scalar_t__ LOOPBACK_INTERNAL (struct ef4_nic*) ;
 int PHY_MODE_TX_DISABLED ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct ef4_nic*) ;

int __ef4_reconfigure_port(struct ef4_nic *efx)
{
 enum ef4_phy_mode phy_mode;
 int rc;

 WARN_ON(!mutex_is_locked(&efx->mac_lock));


 phy_mode = efx->phy_mode;
 if (LOOPBACK_INTERNAL(efx))
  efx->phy_mode |= PHY_MODE_TX_DISABLED;
 else
  efx->phy_mode &= ~PHY_MODE_TX_DISABLED;

 rc = efx->type->reconfigure_port(efx);

 if (rc)
  efx->phy_mode = phy_mode;

 return rc;
}
