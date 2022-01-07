
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;
struct TYPE_5__ {scalar_t__ autoneg; int duplex; int speed; struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {TYPE_2__ phy; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {TYPE_3__* phydev; } ;
struct TYPE_6__ {scalar_t__ autoneg; int duplex; int speed; int supported; int advertising; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int linkmode_and (int ,int ,int ) ;
 int phy_start_aneg (TYPE_3__*) ;
 int xgbe_phy_find_phy_device (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_phy_an_config(struct xgbe_prv_data *pdata)
{
 struct ethtool_link_ksettings *lks = &pdata->phy.lks;
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 int ret;

 ret = xgbe_phy_find_phy_device(pdata);
 if (ret)
  return ret;

 if (!phy_data->phydev)
  return 0;

 phy_data->phydev->autoneg = pdata->phy.autoneg;
 linkmode_and(phy_data->phydev->advertising,
       phy_data->phydev->supported,
       lks->link_modes.advertising);

 if (pdata->phy.autoneg != AUTONEG_ENABLE) {
  phy_data->phydev->speed = pdata->phy.speed;
  phy_data->phydev->duplex = pdata->phy.duplex;
 }

 ret = phy_start_aneg(phy_data->phydev);

 return ret;
}
