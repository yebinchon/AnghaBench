
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* label; int base; int ngpio; int direction_output; int direction_input; int get; int set; } ;
struct tc6393xb {TYPE_1__ gpio; } ;


 int gpiochip_add_data (TYPE_1__*,struct tc6393xb*) ;
 int tc6393xb_gpio_direction_input ;
 int tc6393xb_gpio_direction_output ;
 int tc6393xb_gpio_get ;
 int tc6393xb_gpio_set ;

__attribute__((used)) static int tc6393xb_register_gpio(struct tc6393xb *tc6393xb, int gpio_base)
{
 tc6393xb->gpio.label = "tc6393xb";
 tc6393xb->gpio.base = gpio_base;
 tc6393xb->gpio.ngpio = 16;
 tc6393xb->gpio.set = tc6393xb_gpio_set;
 tc6393xb->gpio.get = tc6393xb_gpio_get;
 tc6393xb->gpio.direction_input = tc6393xb_gpio_direction_input;
 tc6393xb->gpio.direction_output = tc6393xb_gpio_direction_output;

 return gpiochip_add_data(&tc6393xb->gpio, tc6393xb);
}
