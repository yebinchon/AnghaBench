
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int mac_type; int media_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int MII_CR_LOOPBACK ;
 int PHY_CTRL ;
 int e1000_integrated_phy_loopback (struct e1000_adapter*) ;
 int e1000_media_type_copper ;
 int e1000_nonintegrated_phy_loopback (struct e1000_adapter*) ;
 int e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int) ;

__attribute__((used)) static int e1000_set_phy_loopback(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 phy_reg = 0;
 u16 count = 0;

 switch (hw->mac_type) {
 case 135:
  if (hw->media_type == e1000_media_type_copper) {




   while (e1000_nonintegrated_phy_loopback(adapter) &&
          count++ < 10);
   if (count < 11)
    return 0;
  }
  break;

 case 134:
 case 138:
 case 133:
 case 132:
 case 131:
 case 130:
 case 137:
 case 136:
 case 129:
 case 128:
  return e1000_integrated_phy_loopback(adapter);
 default:



  e1000_read_phy_reg(hw, PHY_CTRL, &phy_reg);
  phy_reg |= MII_CR_LOOPBACK;
  e1000_write_phy_reg(hw, PHY_CTRL, phy_reg);
  return 0;
 }

 return 8;
}
