
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int tx_led; int rx_led; } ;


 int ath5k_unregister_led (int *) ;

void ath5k_unregister_leds(struct ath5k_hw *ah)
{
 ath5k_unregister_led(&ah->rx_led);
 ath5k_unregister_led(&ah->tx_led);
}
