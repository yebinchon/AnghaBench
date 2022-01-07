
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int QUAKE_LED_LINK_ACT ;
 int QUAKE_LED_LINK_STAT ;
 int QUAKE_LED_RXLINK ;
 int SFN4112F_ACT_LED ;
 int SFN4112F_LINK_LED ;
 int falcon_qt202x_set_led (struct ef4_nic*,int ,int) ;

__attribute__((used)) static void sfn4112f_init_phy(struct ef4_nic *efx)
{
 falcon_qt202x_set_led(efx, SFN4112F_ACT_LED,
         QUAKE_LED_RXLINK | QUAKE_LED_LINK_ACT);
 falcon_qt202x_set_led(efx, SFN4112F_LINK_LED,
         QUAKE_LED_RXLINK | QUAKE_LED_LINK_STAT);
}
