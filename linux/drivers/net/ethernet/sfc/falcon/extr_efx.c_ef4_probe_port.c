
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_nic {TYPE_2__* net_dev; TYPE_1__* type; int phy_mode; } ;
struct TYPE_4__ {int perm_addr; int dev_addr; } ;
struct TYPE_3__ {int (* probe_port ) (struct ef4_nic*) ;} ;


 int PHY_MODE_SPECIAL ;
 int ether_addr_copy (int ,int ) ;
 int netif_dbg (struct ef4_nic*,int ,TYPE_2__*,char*) ;
 scalar_t__ phy_flash_cfg ;
 int probe ;
 int stub1 (struct ef4_nic*) ;

__attribute__((used)) static int ef4_probe_port(struct ef4_nic *efx)
{
 int rc;

 netif_dbg(efx, probe, efx->net_dev, "create port\n");

 if (phy_flash_cfg)
  efx->phy_mode = PHY_MODE_SPECIAL;


 rc = efx->type->probe_port(efx);
 if (rc)
  return rc;


 ether_addr_copy(efx->net_dev->dev_addr, efx->net_dev->perm_addr);

 return 0;
}
