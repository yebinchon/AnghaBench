
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ef4_nic {int dummy; } ;


 int ADVERTISED_10000baseT_Full ;
 int MDIO_AN_10GBT_CTRL ;
 int MDIO_AN_10GBT_CTRL_ADV10G ;
 int MDIO_MMD_AN ;
 int ef4_mdio_set_flag (struct ef4_nic*,int ,int ,int ,int) ;

__attribute__((used)) static void sfx7101_set_npage_adv(struct ef4_nic *efx, u32 advertising)
{
 ef4_mdio_set_flag(efx, MDIO_MMD_AN, MDIO_AN_10GBT_CTRL,
     MDIO_AN_10GBT_CTRL_ADV10G,
     advertising & ADVERTISED_10000baseT_Full);
}
