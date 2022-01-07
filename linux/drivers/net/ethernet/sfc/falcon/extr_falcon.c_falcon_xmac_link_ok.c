
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmds; } ;
struct ef4_nic {scalar_t__ loopback_mode; TYPE_1__ mdio; } ;


 scalar_t__ LOOPBACK_INTERNAL (struct ef4_nic*) ;
 scalar_t__ LOOPBACK_XGMII ;
 int MDIO_MMD_PHYXS ;
 scalar_t__ ef4_mdio_phyxgxs_lane_sync (struct ef4_nic*) ;
 scalar_t__ falcon_xgxs_link_ok (struct ef4_nic*) ;

__attribute__((used)) static bool falcon_xmac_link_ok(struct ef4_nic *efx)
{






 return (efx->loopback_mode == LOOPBACK_XGMII ||
  falcon_xgxs_link_ok(efx)) &&
  (!(efx->mdio.mmds & (1 << MDIO_MMD_PHYXS)) ||
   LOOPBACK_INTERNAL(efx) ||
   ef4_mdio_phyxgxs_lane_sync(efx));
}
