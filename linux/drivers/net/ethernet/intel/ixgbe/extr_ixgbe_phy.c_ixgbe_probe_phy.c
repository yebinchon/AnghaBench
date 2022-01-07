
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_6__ {int prtad; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ ops; int id; TYPE_3__ mdio; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_EXTABLE ;
 int MDIO_PMA_EXTABLE_1000BT ;
 int MDIO_PMA_EXTABLE_10GBT ;
 scalar_t__ ixgbe_get_phy_id (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_get_phy_type_from_id (int ) ;
 scalar_t__ ixgbe_phy_cu_unknown ;
 scalar_t__ ixgbe_phy_generic ;
 scalar_t__ ixgbe_phy_unknown ;
 scalar_t__ mdio45_probe (TYPE_3__*,int) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;

__attribute__((used)) static bool ixgbe_probe_phy(struct ixgbe_hw *hw, u16 phy_addr)
{
 u16 ext_ability = 0;

 hw->phy.mdio.prtad = phy_addr;
 if (mdio45_probe(&hw->phy.mdio, phy_addr) != 0)
  return 0;

 if (ixgbe_get_phy_id(hw))
  return 0;

 hw->phy.type = ixgbe_get_phy_type_from_id(hw->phy.id);

 if (hw->phy.type == ixgbe_phy_unknown) {
  hw->phy.ops.read_reg(hw,
         MDIO_PMA_EXTABLE,
         MDIO_MMD_PMAPMD,
         &ext_ability);
  if (ext_ability &
      (MDIO_PMA_EXTABLE_10GBT |
       MDIO_PMA_EXTABLE_1000BT))
   hw->phy.type = ixgbe_phy_cu_unknown;
  else
   hw->phy.type = ixgbe_phy_generic;
 }

 return 1;
}
