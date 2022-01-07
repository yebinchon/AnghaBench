
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_board {int minor; scalar_t__ major; } ;
struct ef4_nic {int dummy; } ;


 int SFE4003_LED_OFF ;
 int SFE4003_RED_LED_GPIO ;
 int TXC_GPIO_DIR_OUTPUT ;
 struct falcon_board* falcon_board (struct ef4_nic*) ;
 int falcon_txc_set_gpio_dir (struct ef4_nic*,int ,int ) ;
 int falcon_txc_set_gpio_val (struct ef4_nic*,int ,int ) ;

__attribute__((used)) static void sfe4003_init_phy(struct ef4_nic *efx)
{
 struct falcon_board *board = falcon_board(efx);


 if (board->minor < 3 && board->major == 0)
  return;

 falcon_txc_set_gpio_dir(efx, SFE4003_RED_LED_GPIO, TXC_GPIO_DIR_OUTPUT);
 falcon_txc_set_gpio_val(efx, SFE4003_RED_LED_GPIO, SFE4003_LED_OFF);
}
