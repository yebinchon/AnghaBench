
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_MDIC ;
 int E1000_MDICNFG ;
 int E1000_MDICNFG_EXT_MDIO ;
 int E1000_MDIC_DEST ;







 int rd32 (int ) ;

__attribute__((used)) static bool igb_sgmii_uses_mdio_82575(struct e1000_hw *hw)
{
 u32 reg = 0;
 bool ext_mdio = 0;

 switch (hw->mac.type) {
 case 134:
 case 133:
  reg = rd32(E1000_MDIC);
  ext_mdio = !!(reg & E1000_MDIC_DEST);
  break;
 case 132:
 case 129:
 case 128:
 case 131:
 case 130:
  reg = rd32(E1000_MDICNFG);
  ext_mdio = !!(reg & E1000_MDICNFG_EXT_MDIO);
  break;
 default:
  break;
 }
 return ext_mdio;
}
