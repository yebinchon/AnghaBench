
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int port; int speed; struct skge_hw* hw; } ;
struct skge_hw {int phy_lock; int phy_type; } ;
typedef enum led_mode { ____Placeholder_led_mode } led_mode ;


 int BLINK_84MS ;



 int LED_START ;
 int LED_T_OFF ;
 int LED_T_ON ;
 int LINKLED_LINKSYNC_ON ;
 int LINKLED_OFF ;
 int LINKLED_ON ;
 int LNK_LED_REG ;
 int MO_LED_OFF ;
 int MO_LED_ON ;
 int PHY_BCOM_P_EXT_CTRL ;
 int PHY_B_PEC_LED_OFF ;
 int PHY_B_PEC_LED_ON ;
 int PHY_MARV_LED_CTRL ;
 int PHY_MARV_LED_OVER ;
 int PHY_M_LEDC_DP_CTRL ;
 int PHY_M_LEDC_TX_CTRL ;
 int PHY_M_LED_BLINK_RT (int ) ;
 int PHY_M_LED_MO_10 (int ) ;
 int PHY_M_LED_MO_100 (int ) ;
 int PHY_M_LED_MO_1000 (int ) ;
 int PHY_M_LED_MO_DUP (int ) ;
 int PHY_M_LED_MO_RX (int ) ;
 int PHY_M_LED_PULS_DUR (int ) ;
 int PULS_170MS ;
 int RX_LED_CTRL ;
 int RX_LED_TST ;
 int RX_LED_VAL ;
 int SK_PHY_BCOM ;
 int SK_REG (int,int ) ;
 int SPEED_100 ;
 int TX_LED_CTRL ;
 int TX_LED_TST ;
 int TX_LED_VAL ;
 int gm_phy_write (struct skge_hw*,int,int ,int) ;
 scalar_t__ is_genesis (struct skge_hw*) ;
 int skge_write32 (struct skge_hw*,int ,int) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xm_phy_write (struct skge_hw*,int,int ,int ) ;

__attribute__((used)) static void skge_led(struct skge_port *skge, enum led_mode mode)
{
 struct skge_hw *hw = skge->hw;
 int port = skge->port;

 spin_lock_bh(&hw->phy_lock);
 if (is_genesis(hw)) {
  switch (mode) {
  case 130:
   if (hw->phy_type == SK_PHY_BCOM)
    xm_phy_write(hw, port, PHY_BCOM_P_EXT_CTRL, PHY_B_PEC_LED_OFF);
   else {
    skge_write32(hw, SK_REG(port, TX_LED_VAL), 0);
    skge_write8(hw, SK_REG(port, TX_LED_CTRL), LED_T_OFF);
   }
   skge_write8(hw, SK_REG(port, LNK_LED_REG), LINKLED_OFF);
   skge_write32(hw, SK_REG(port, RX_LED_VAL), 0);
   skge_write8(hw, SK_REG(port, RX_LED_CTRL), LED_T_OFF);
   break;

  case 129:
   skge_write8(hw, SK_REG(port, LNK_LED_REG), LINKLED_ON);
   skge_write8(hw, SK_REG(port, LNK_LED_REG), LINKLED_LINKSYNC_ON);

   skge_write8(hw, SK_REG(port, RX_LED_CTRL), LED_START);
   skge_write8(hw, SK_REG(port, TX_LED_CTRL), LED_START);

   break;

  case 128:
   skge_write8(hw, SK_REG(port, RX_LED_TST), LED_T_ON);
   skge_write32(hw, SK_REG(port, RX_LED_VAL), 100);
   skge_write8(hw, SK_REG(port, RX_LED_CTRL), LED_START);

   if (hw->phy_type == SK_PHY_BCOM)
    xm_phy_write(hw, port, PHY_BCOM_P_EXT_CTRL, PHY_B_PEC_LED_ON);
   else {
    skge_write8(hw, SK_REG(port, TX_LED_TST), LED_T_ON);
    skge_write32(hw, SK_REG(port, TX_LED_VAL), 100);
    skge_write8(hw, SK_REG(port, TX_LED_CTRL), LED_START);
   }

  }
 } else {
  switch (mode) {
  case 130:
   gm_phy_write(hw, port, PHY_MARV_LED_CTRL, 0);
   gm_phy_write(hw, port, PHY_MARV_LED_OVER,
         PHY_M_LED_MO_DUP(MO_LED_OFF) |
         PHY_M_LED_MO_10(MO_LED_OFF) |
         PHY_M_LED_MO_100(MO_LED_OFF) |
         PHY_M_LED_MO_1000(MO_LED_OFF) |
         PHY_M_LED_MO_RX(MO_LED_OFF));
   break;
  case 129:
   gm_phy_write(hw, port, PHY_MARV_LED_CTRL,
         PHY_M_LED_PULS_DUR(PULS_170MS) |
         PHY_M_LED_BLINK_RT(BLINK_84MS) |
         PHY_M_LEDC_TX_CTRL |
         PHY_M_LEDC_DP_CTRL);

   gm_phy_write(hw, port, PHY_MARV_LED_OVER,
         PHY_M_LED_MO_RX(MO_LED_OFF) |
         (skge->speed == SPEED_100 ?
          PHY_M_LED_MO_100(MO_LED_ON) : 0));
   break;
  case 128:
   gm_phy_write(hw, port, PHY_MARV_LED_CTRL, 0);
   gm_phy_write(hw, port, PHY_MARV_LED_OVER,
         PHY_M_LED_MO_DUP(MO_LED_ON) |
         PHY_M_LED_MO_10(MO_LED_ON) |
         PHY_M_LED_MO_100(MO_LED_ON) |
         PHY_M_LED_MO_1000(MO_LED_ON) |
         PHY_M_LED_MO_RX(MO_LED_ON));
  }
 }
 spin_unlock_bh(&hw->phy_lock);
}
