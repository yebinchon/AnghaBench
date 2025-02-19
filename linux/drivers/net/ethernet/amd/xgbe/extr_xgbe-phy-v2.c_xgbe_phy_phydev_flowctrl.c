
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ethtool_link_ksettings {int dummy; } ;
struct TYPE_4__ {int tx_pause; int rx_pause; struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {TYPE_2__ phy; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {TYPE_1__* phydev; } ;
struct TYPE_3__ {scalar_t__ asym_pause; scalar_t__ pause; int advertising; } ;


 int Asym_Pause ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int Pause ;
 int XGBE_SET_LP_ADV (struct ethtool_link_ksettings*,int ) ;
 int linkmode_adv_to_lcl_adv_t (int ) ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;

__attribute__((used)) static void xgbe_phy_phydev_flowctrl(struct xgbe_prv_data *pdata)
{
 struct ethtool_link_ksettings *lks = &pdata->phy.lks;
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 u16 lcl_adv = 0, rmt_adv = 0;
 u8 fc;

 pdata->phy.tx_pause = 0;
 pdata->phy.rx_pause = 0;

 if (!phy_data->phydev)
  return;

 lcl_adv = linkmode_adv_to_lcl_adv_t(phy_data->phydev->advertising);

 if (phy_data->phydev->pause) {
  XGBE_SET_LP_ADV(lks, Pause);
  rmt_adv |= LPA_PAUSE_CAP;
 }
 if (phy_data->phydev->asym_pause) {
  XGBE_SET_LP_ADV(lks, Asym_Pause);
  rmt_adv |= LPA_PAUSE_ASYM;
 }

 fc = mii_resolve_flowctrl_fdx(lcl_adv, rmt_adv);
 if (fc & FLOW_CTRL_TX)
  pdata->phy.tx_pause = 1;
 if (fc & FLOW_CTRL_RX)
  pdata->phy.rx_pause = 1;
}
