
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_port {unsigned int port; int phy_lock; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ chip_id; } ;
typedef enum led_mode { ____Placeholder_led_mode } led_mode ;


 scalar_t__ CHIP_ID_YUKON_EC_U ;
 scalar_t__ CHIP_ID_YUKON_EX ;
 scalar_t__ CHIP_ID_YUKON_SUPR ;




 int PHY_MARV_EXT_ADR ;
 int PHY_MARV_LED_OVER ;
 int PHY_MARV_PHY_CTRL ;
 int PHY_M_LEDC_INIT_CTRL (int) ;
 int PHY_M_LEDC_LOS_CTRL (int) ;
 int PHY_M_LEDC_STA0_CTRL (int) ;
 int PHY_M_LEDC_STA1_CTRL (int) ;
 int PHY_M_LED_MO_10 (int) ;
 int PHY_M_LED_MO_100 (int) ;
 int PHY_M_LED_MO_1000 (int) ;
 int PHY_M_LED_MO_DUP (int) ;
 int PHY_M_LED_MO_RX (int) ;
 int PHY_M_LED_MO_TX (int) ;
 int gm_phy_read (struct sky2_hw*,unsigned int,int ) ;
 int gm_phy_write (struct sky2_hw*,unsigned int,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sky2_led(struct sky2_port *sky2, enum led_mode mode)
{
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;

 spin_lock_bh(&sky2->phy_lock);
 if (hw->chip_id == CHIP_ID_YUKON_EC_U ||
     hw->chip_id == CHIP_ID_YUKON_EX ||
     hw->chip_id == CHIP_ID_YUKON_SUPR) {
  u16 pg;
  pg = gm_phy_read(hw, port, PHY_MARV_EXT_ADR);
  gm_phy_write(hw, port, PHY_MARV_EXT_ADR, 3);

  switch (mode) {
  case 129:
   gm_phy_write(hw, port, PHY_MARV_PHY_CTRL,
         PHY_M_LEDC_LOS_CTRL(8) |
         PHY_M_LEDC_INIT_CTRL(8) |
         PHY_M_LEDC_STA1_CTRL(8) |
         PHY_M_LEDC_STA0_CTRL(8));
   break;
  case 128:
   gm_phy_write(hw, port, PHY_MARV_PHY_CTRL,
         PHY_M_LEDC_LOS_CTRL(9) |
         PHY_M_LEDC_INIT_CTRL(9) |
         PHY_M_LEDC_STA1_CTRL(9) |
         PHY_M_LEDC_STA0_CTRL(9));
   break;
  case 131:
   gm_phy_write(hw, port, PHY_MARV_PHY_CTRL,
         PHY_M_LEDC_LOS_CTRL(0xa) |
         PHY_M_LEDC_INIT_CTRL(0xa) |
         PHY_M_LEDC_STA1_CTRL(0xa) |
         PHY_M_LEDC_STA0_CTRL(0xa));
   break;
  case 130:
   gm_phy_write(hw, port, PHY_MARV_PHY_CTRL,
         PHY_M_LEDC_LOS_CTRL(1) |
         PHY_M_LEDC_INIT_CTRL(8) |
         PHY_M_LEDC_STA1_CTRL(7) |
         PHY_M_LEDC_STA0_CTRL(7));
  }

  gm_phy_write(hw, port, PHY_MARV_EXT_ADR, pg);
 } else
  gm_phy_write(hw, port, PHY_MARV_LED_OVER,
         PHY_M_LED_MO_DUP(mode) |
         PHY_M_LED_MO_10(mode) |
         PHY_M_LED_MO_100(mode) |
         PHY_M_LED_MO_1000(mode) |
         PHY_M_LED_MO_RX(mode) |
         PHY_M_LED_MO_TX(mode));

 spin_unlock_bh(&sky2->phy_lock);
}
