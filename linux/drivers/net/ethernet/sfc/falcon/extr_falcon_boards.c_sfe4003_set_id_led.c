
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_board {int minor; scalar_t__ major; } ;
struct ef4_nic {int dummy; } ;
typedef enum ef4_led_mode { ____Placeholder_ef4_led_mode } ef4_led_mode ;


 int EF4_LED_ON ;
 int SFE4003_LED_OFF ;
 int SFE4003_LED_ON ;
 int SFE4003_RED_LED_GPIO ;
 struct falcon_board* falcon_board (struct ef4_nic*) ;
 int falcon_txc_set_gpio_val (struct ef4_nic*,int ,int ) ;

__attribute__((used)) static void sfe4003_set_id_led(struct ef4_nic *efx, enum ef4_led_mode mode)
{
 struct falcon_board *board = falcon_board(efx);


 if (board->minor < 3 && board->major == 0)
  return;

 falcon_txc_set_gpio_val(
  efx, SFE4003_RED_LED_GPIO,
  (mode == EF4_LED_ON) ? SFE4003_LED_ON : SFE4003_LED_OFF);
}
