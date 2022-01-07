
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int phy_mode; TYPE_1__* type; int mac_lock; } ;
typedef enum efx_phy_mode { ____Placeholder_efx_phy_mode } efx_phy_mode ;
struct TYPE_2__ {int (* reconfigure_port ) (struct efx_nic*) ;} ;


 scalar_t__ LOOPBACK_INTERNAL (struct efx_nic*) ;
 int PHY_MODE_TX_DISABLED ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct efx_nic*) ;

int __efx_reconfigure_port(struct efx_nic *efx)
{
 enum efx_phy_mode phy_mode;
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
