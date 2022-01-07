
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x_reg_set {int member_1; int member_2; int val; int reg; int const devad; int const member_0; } ;
struct bnx2x_phy {scalar_t__ type; } ;
struct bnx2x {int dummy; } ;


 int ARRAY_SIZE (struct bnx2x_reg_set*) ;




 int MDIO_PMA_REG_8481_LED3_BLINK ;

 int MDIO_PMA_REG_8481_LED5_MASK ;
 int MDIO_PMA_REG_8481_LINK_SIGNAL ;

 int MDIO_PMA_REG_84823_CTL_LED_CTL_1 ;

 int MDIO_PMA_REG_84823_LED3_STRETCH_EN ;
 int MDIO_PMA_REG_84833_CTL_LED_CTL_1 ;
 int MDIO_PMA_REG_84858_ALLOW_GPHY_ACT ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int const,int ,int*) ;
 int bnx2x_cl45_read_or_write (struct bnx2x*,struct bnx2x_phy*,int const,int,int) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int const,int ,int) ;
 scalar_t__ bnx2x_is_8483x_8485x (struct bnx2x_phy*) ;

__attribute__((used)) static void bnx2x_848xx_set_led(struct bnx2x *bp,
    struct bnx2x_phy *phy)
{
 u16 val, led3_blink_rate, offset, i;
 static struct bnx2x_reg_set reg_set[] = {
  {133, 132, 0x0080},
  {133, 131, 0x0018},
  {133, 130, 0x0006},
  {133, 128,
   129},
  {134, 0xFFFB, 0xFFFD}
 };

 if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858) {

  bnx2x_cl45_write(bp, phy,
     133,
     MDIO_PMA_REG_8481_LED5_MASK,
     0x90);
  led3_blink_rate = 0x000f;
 } else {
  led3_blink_rate = 0x0000;
 }

 bnx2x_cl45_write(bp, phy,
    133,
    MDIO_PMA_REG_8481_LED3_BLINK,
    led3_blink_rate);


 bnx2x_cl45_read(bp, phy,
   133,
   MDIO_PMA_REG_8481_LINK_SIGNAL, &val);
 val &= 0xFE00;
 val |= 0x0092;

 if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858)
  val |= 2 << 12;

 bnx2x_cl45_write(bp, phy,
    133,
    MDIO_PMA_REG_8481_LINK_SIGNAL, val);

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  bnx2x_cl45_write(bp, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);

 if (bnx2x_is_8483x_8485x(phy))
  offset = MDIO_PMA_REG_84833_CTL_LED_CTL_1;
 else
  offset = MDIO_PMA_REG_84823_CTL_LED_CTL_1;

 if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858)
  val = MDIO_PMA_REG_84858_ALLOW_GPHY_ACT |
        MDIO_PMA_REG_84823_LED3_STRETCH_EN;
 else
  val = MDIO_PMA_REG_84823_LED3_STRETCH_EN;


 bnx2x_cl45_read_or_write(bp, phy,
     133,
     offset,
     val);
}
