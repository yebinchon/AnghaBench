
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int ADIN1300_NRG_PD_EN ;
 int ADIN1300_NRG_PD_TX_EN ;
 int ADIN1300_PHY_CTRL_STATUS2 ;
 int ETHTOOL_PHY_EDPD_DFLT_TX_MSECS ;
 int ETHTOOL_PHY_EDPD_DISABLE ;
 int ETHTOOL_PHY_EDPD_NO_TX ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int adin_get_edpd(struct phy_device *phydev, u16 *tx_interval)
{
 int val;

 val = phy_read(phydev, ADIN1300_PHY_CTRL_STATUS2);
 if (val < 0)
  return val;

 if (ADIN1300_NRG_PD_EN & val) {
  if (val & ADIN1300_NRG_PD_TX_EN)

   *tx_interval = ETHTOOL_PHY_EDPD_DFLT_TX_MSECS;
  else
   *tx_interval = ETHTOOL_PHY_EDPD_NO_TX;
 } else {
  *tx_interval = ETHTOOL_PHY_EDPD_DISABLE;
 }

 return 0;
}
