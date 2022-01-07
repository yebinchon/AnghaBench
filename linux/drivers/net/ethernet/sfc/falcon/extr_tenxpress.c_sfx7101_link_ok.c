
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int MDIO_DEVS_PCS ;
 int MDIO_DEVS_PHYXS ;
 int MDIO_DEVS_PMAPMD ;
 int ef4_mdio_links_ok (struct ef4_nic*,int) ;

__attribute__((used)) static bool sfx7101_link_ok(struct ef4_nic *efx)
{
 return ef4_mdio_links_ok(efx,
     MDIO_DEVS_PMAPMD |
     MDIO_DEVS_PCS |
     MDIO_DEVS_PHYXS);
}
