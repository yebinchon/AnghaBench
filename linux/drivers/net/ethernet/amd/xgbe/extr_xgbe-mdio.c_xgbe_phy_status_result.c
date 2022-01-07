
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethtool_link_ksettings {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; int duplex; int speed; struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {scalar_t__ an_again; TYPE_1__ phy; scalar_t__ parallel_detect; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_2500 ;
 int SPEED_UNKNOWN ;
 int XGBE_ZERO_LP_ADV (struct ethtool_link_ksettings*) ;
 int xgbe_cur_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_reconfig_aneg (struct xgbe_prv_data*) ;
 int xgbe_phy_status_aneg (struct xgbe_prv_data*) ;
 scalar_t__ xgbe_set_mode (struct xgbe_prv_data*,int) ;

__attribute__((used)) static void xgbe_phy_status_result(struct xgbe_prv_data *pdata)
{
 struct ethtool_link_ksettings *lks = &pdata->phy.lks;
 enum xgbe_mode mode;

 XGBE_ZERO_LP_ADV(lks);

 if ((pdata->phy.autoneg != AUTONEG_ENABLE) || pdata->parallel_detect)
  mode = xgbe_cur_mode(pdata);
 else
  mode = xgbe_phy_status_aneg(pdata);

 switch (mode) {
 case 131:
  pdata->phy.speed = SPEED_100;
  break;
 case 128:
 case 134:
 case 130:
  pdata->phy.speed = SPEED_1000;
  break;
 case 133:
  pdata->phy.speed = SPEED_2500;
  break;
 case 135:
 case 132:
  pdata->phy.speed = SPEED_10000;
  break;
 case 129:
 default:
  pdata->phy.speed = SPEED_UNKNOWN;
 }

 pdata->phy.duplex = DUPLEX_FULL;

 if (xgbe_set_mode(pdata, mode) && pdata->an_again)
  xgbe_phy_reconfig_aneg(pdata);
}
