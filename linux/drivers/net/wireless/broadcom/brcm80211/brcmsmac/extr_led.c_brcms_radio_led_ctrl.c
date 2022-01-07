
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gpio; scalar_t__ active_low; } ;
struct brcms_info {TYPE_1__ radio_led; } ;


 int gpio_set_value (int,int) ;

__attribute__((used)) static void brcms_radio_led_ctrl(struct brcms_info *wl, bool state)
{
 if (wl->radio_led.gpio == -1)
  return;

 if (wl->radio_led.active_low)
  state = !state;

 if (state)
  gpio_set_value(wl->radio_led.gpio, 1);
 else
  gpio_set_value(wl->radio_led.gpio, 0);
}
