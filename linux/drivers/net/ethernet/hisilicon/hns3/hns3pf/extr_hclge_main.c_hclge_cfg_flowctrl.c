
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct phy_device {scalar_t__ duplex; scalar_t__ asym_pause; scalar_t__ pause; int advertising; int autoneg; int link; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 scalar_t__ HCLGE_MAC_HALF ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int hclge_cfg_pauseparam (struct hclge_dev*,int,int) ;
 int linkmode_adv_to_lcl_adv_t (int ) ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;

int hclge_cfg_flowctrl(struct hclge_dev *hdev)
{
 struct phy_device *phydev = hdev->hw.mac.phydev;
 u16 remote_advertising = 0;
 u16 local_advertising;
 u32 rx_pause, tx_pause;
 u8 flowctl;

 if (!phydev->link || !phydev->autoneg)
  return 0;

 local_advertising = linkmode_adv_to_lcl_adv_t(phydev->advertising);

 if (phydev->pause)
  remote_advertising = LPA_PAUSE_CAP;

 if (phydev->asym_pause)
  remote_advertising |= LPA_PAUSE_ASYM;

 flowctl = mii_resolve_flowctrl_fdx(local_advertising,
        remote_advertising);
 tx_pause = flowctl & FLOW_CTRL_TX;
 rx_pause = flowctl & FLOW_CTRL_RX;

 if (phydev->duplex == HCLGE_MAC_HALF) {
  tx_pause = 0;
  rx_pause = 0;
 }

 return hclge_cfg_pauseparam(hdev, rx_pause, tx_pause);
}
