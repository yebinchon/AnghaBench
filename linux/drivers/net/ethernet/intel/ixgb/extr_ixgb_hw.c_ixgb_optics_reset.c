
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgb_hw {scalar_t__ phy_type; } ;


 int IXGB_PHY_ADDRESS ;
 int MDIO_CTRL1 ;
 int MDIO_CTRL1_RESET ;
 int MDIO_MMD_PMAPMD ;
 scalar_t__ ixgb_phy_type_txn17401 ;
 int ixgb_read_phy_reg (struct ixgb_hw*,int ,int ,int ) ;
 int ixgb_write_phy_reg (struct ixgb_hw*,int ,int ,int ,int ) ;

__attribute__((used)) static void
ixgb_optics_reset(struct ixgb_hw *hw)
{
 if (hw->phy_type == ixgb_phy_type_txn17401) {
  u16 mdio_reg;

  ixgb_write_phy_reg(hw,
       MDIO_CTRL1,
       IXGB_PHY_ADDRESS,
       MDIO_MMD_PMAPMD,
       MDIO_CTRL1_RESET);

  mdio_reg = ixgb_read_phy_reg(hw,
          MDIO_CTRL1,
          IXGB_PHY_ADDRESS,
          MDIO_MMD_PMAPMD);
 }
}
