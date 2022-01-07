
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct phy_device {scalar_t__ asym_pause; scalar_t__ pause; int advertising; int duplex; } ;
struct mac_device {int rx_pause_req; int tx_pause_req; int autoneg_pause; struct phy_device* phy_dev; } ;


 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int linkmode_adv_to_lcl_adv_t (int ) ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;

void fman_get_pause_cfg(struct mac_device *mac_dev, bool *rx_pause,
   bool *tx_pause)
{
 struct phy_device *phy_dev = mac_dev->phy_dev;
 u16 lcl_adv, rmt_adv;
 u8 flowctrl;

 *rx_pause = *tx_pause = 0;

 if (!phy_dev->duplex)
  return;




 if (!mac_dev->autoneg_pause) {
  *rx_pause = mac_dev->rx_pause_req;
  *tx_pause = mac_dev->tx_pause_req;
  return;
 }






 lcl_adv = linkmode_adv_to_lcl_adv_t(phy_dev->advertising);


 rmt_adv = 0;
 if (phy_dev->pause)
  rmt_adv |= LPA_PAUSE_CAP;
 if (phy_dev->asym_pause)
  rmt_adv |= LPA_PAUSE_ASYM;




 flowctrl = mii_resolve_flowctrl_fdx(lcl_adv, rmt_adv);
 if (flowctrl & FLOW_CTRL_RX)
  *rx_pause = 1;
 if (flowctrl & FLOW_CTRL_TX)
  *tx_pause = 1;
}
