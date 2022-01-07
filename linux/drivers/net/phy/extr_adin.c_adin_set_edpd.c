
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int ADIN1300_NRG_PD_EN ;
 int ADIN1300_NRG_PD_TX_EN ;
 int ADIN1300_PHY_CTRL_STATUS2 ;
 int EINVAL ;

 int ETHTOOL_PHY_EDPD_DISABLE ;

 int phy_clear_bits (struct phy_device*,int ,int) ;
 int phy_modify (struct phy_device*,int ,int,int) ;

__attribute__((used)) static int adin_set_edpd(struct phy_device *phydev, u16 tx_interval)
{
 u16 val;

 if (tx_interval == ETHTOOL_PHY_EDPD_DISABLE)
  return phy_clear_bits(phydev, ADIN1300_PHY_CTRL_STATUS2,
    (ADIN1300_NRG_PD_EN | ADIN1300_NRG_PD_TX_EN));

 val = ADIN1300_NRG_PD_EN;

 switch (tx_interval) {
 case 1000:

 case 129:
  val |= ADIN1300_NRG_PD_TX_EN;

 case 128:
  break;
 default:
  return -EINVAL;
 }

 return phy_modify(phydev, ADIN1300_PHY_CTRL_STATUS2,
     (ADIN1300_NRG_PD_EN | ADIN1300_NRG_PD_TX_EN),
     val);
}
