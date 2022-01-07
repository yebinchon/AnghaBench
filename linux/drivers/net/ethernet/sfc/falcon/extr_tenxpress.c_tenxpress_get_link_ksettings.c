
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct ef4_nic {int mdio; } ;


 int ADVERTISED_10000baseT_Full ;
 scalar_t__ LOOPBACK_EXTERNAL (struct ef4_nic*) ;
 int MDIO_AN_10GBT_CTRL ;
 int MDIO_AN_10GBT_CTRL_ADV10G ;
 int MDIO_AN_10GBT_STAT ;
 int MDIO_AN_10GBT_STAT_LP10G ;
 int MDIO_MMD_AN ;
 int SPEED_10000 ;
 int ef4_mdio_read (struct ef4_nic*,int ,int ) ;
 int mdio45_ethtool_ksettings_get_npage (int *,struct ethtool_link_ksettings*,int ,int ) ;

__attribute__((used)) static void
tenxpress_get_link_ksettings(struct ef4_nic *efx,
        struct ethtool_link_ksettings *cmd)
{
 u32 adv = 0, lpa = 0;
 int reg;

 reg = ef4_mdio_read(efx, MDIO_MMD_AN, MDIO_AN_10GBT_CTRL);
 if (reg & MDIO_AN_10GBT_CTRL_ADV10G)
  adv |= ADVERTISED_10000baseT_Full;
 reg = ef4_mdio_read(efx, MDIO_MMD_AN, MDIO_AN_10GBT_STAT);
 if (reg & MDIO_AN_10GBT_STAT_LP10G)
  lpa |= ADVERTISED_10000baseT_Full;

 mdio45_ethtool_ksettings_get_npage(&efx->mdio, cmd, adv, lpa);



 if (LOOPBACK_EXTERNAL(efx))
  cmd->base.speed = SPEED_10000;
}
