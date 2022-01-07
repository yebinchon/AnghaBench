
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
typedef enum ef4_led_mode { ____Placeholder_ef4_led_mode } ef4_led_mode ;




 int MDIO_MMD_PMAPMD ;
 int PMA_PMD_LED_LINK_LBN ;
 int PMA_PMD_LED_OFF ;
 int PMA_PMD_LED_ON ;
 int PMA_PMD_LED_OVERR_REG ;
 int PMA_PMD_LED_RX_LBN ;
 int PMA_PMD_LED_TX_LBN ;
 int SFX7101_PMA_PMD_LED_DEFAULT ;
 int ef4_mdio_write (struct ef4_nic*,int ,int ,int) ;

void tenxpress_set_id_led(struct ef4_nic *efx, enum ef4_led_mode mode)
{
 int reg;

 switch (mode) {
 case 129:
  reg = (PMA_PMD_LED_OFF << PMA_PMD_LED_TX_LBN) |
   (PMA_PMD_LED_OFF << PMA_PMD_LED_RX_LBN) |
   (PMA_PMD_LED_OFF << PMA_PMD_LED_LINK_LBN);
  break;
 case 128:
  reg = (PMA_PMD_LED_ON << PMA_PMD_LED_TX_LBN) |
   (PMA_PMD_LED_ON << PMA_PMD_LED_RX_LBN) |
   (PMA_PMD_LED_ON << PMA_PMD_LED_LINK_LBN);
  break;
 default:
  reg = SFX7101_PMA_PMD_LED_DEFAULT;
  break;
 }

 ef4_mdio_write(efx, MDIO_MMD_PMAPMD, PMA_PMD_LED_OVERR_REG, reg);
}
