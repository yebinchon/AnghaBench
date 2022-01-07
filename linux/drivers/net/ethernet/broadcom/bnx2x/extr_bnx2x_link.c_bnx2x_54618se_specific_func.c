
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_REG_GPHY_SHADOW ;
 int MDIO_REG_GPHY_SHADOW_LED_SEL2 ;
 int MDIO_REG_GPHY_SHADOW_WR_ENA ;
 int MDIO_REG_INTR_MASK ;
 int MDIO_REG_INTR_MASK_LINK_STATUS ;

 int bnx2x_cl22_read (struct bnx2x*,struct bnx2x_phy*,int ,int*) ;
 int bnx2x_cl22_write (struct bnx2x*,struct bnx2x_phy*,int ,int) ;

__attribute__((used)) static void bnx2x_54618se_specific_func(struct bnx2x_phy *phy,
     struct link_params *params,
     u32 action)
{
 struct bnx2x *bp = params->bp;
 u16 temp;
 switch (action) {
 case 128:


  bnx2x_cl22_write(bp, phy,
     MDIO_REG_GPHY_SHADOW,
     MDIO_REG_GPHY_SHADOW_LED_SEL2);
  bnx2x_cl22_read(bp, phy,
    MDIO_REG_GPHY_SHADOW,
    &temp);
  temp &= ~(0xf << 4);
  temp |= (0x6 << 4);
  bnx2x_cl22_write(bp, phy,
     MDIO_REG_GPHY_SHADOW,
     MDIO_REG_GPHY_SHADOW_WR_ENA | temp);

  bnx2x_cl22_write(bp, phy,
     MDIO_REG_INTR_MASK,
     ~MDIO_REG_INTR_MASK_LINK_STATUS);
  break;
 }
}
