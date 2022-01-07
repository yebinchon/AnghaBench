
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int prtad; } ;
struct TYPE_6__ {int nw_mng_if_sel; TYPE_2__ mdio; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_1__ mac; } ;


 int IXGBE_NW_MNG_IF_SEL ;
 int IXGBE_NW_MNG_IF_SEL_MDIO_ACT ;
 int IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD ;
 int IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD_SHIFT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_mac_x550em_a ;

__attribute__((used)) static void ixgbe_read_mng_if_sel_x550em(struct ixgbe_hw *hw)
{



 hw->phy.nw_mng_if_sel = IXGBE_READ_REG(hw, IXGBE_NW_MNG_IF_SEL);




 if (hw->mac.type == ixgbe_mac_x550em_a &&
     hw->phy.nw_mng_if_sel & IXGBE_NW_MNG_IF_SEL_MDIO_ACT) {
  hw->phy.mdio.prtad = (hw->phy.nw_mng_if_sel &
          IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD) >>
         IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD_SHIFT;
 }
}
