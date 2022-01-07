
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ type; } ;
struct bnx2x {int dummy; } ;


 int BP_PATH (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int MDIO_84833_SUPER_ISOLATE ;
 int MDIO_84833_TOP_CFG_XGPHY_STRAP1 ;
 int MDIO_CTL_DEVAD ;
 int MISC_REGISTERS_GPIO_3 ;
 int MISC_REGISTERS_GPIO_OUTPUT_LOW ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int *) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int ) ;
 int bnx2x_set_gpio (struct bnx2x*,int ,int ,int ) ;

__attribute__((used)) static void bnx2x_848x3_link_reset(struct bnx2x_phy *phy,
       struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u8 port;
 u16 val16;

 if (!(CHIP_IS_E1x(bp)))
  port = BP_PATH(bp);
 else
  port = params->port;

 if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823) {
  bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_3,
          MISC_REGISTERS_GPIO_OUTPUT_LOW,
          port);
 } else {
  bnx2x_cl45_read(bp, phy,
    MDIO_CTL_DEVAD,
    MDIO_84833_TOP_CFG_XGPHY_STRAP1, &val16);
  val16 |= MDIO_84833_SUPER_ISOLATE;
  bnx2x_cl45_write(bp, phy,
     MDIO_CTL_DEVAD,
     MDIO_84833_TOP_CFG_XGPHY_STRAP1, val16);
 }
}
