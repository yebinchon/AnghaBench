
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl_gpio_cfg {int pin; int dir; int val; } ;
struct mxl111sf_state {int dummy; } ;


 int mxl111sf_config_gpio_pins (struct mxl111sf_state*,struct mxl_gpio_cfg*) ;
 int mxl_debug (char*,int,int,int) ;

__attribute__((used)) static int mxl111sf_hw_do_set_gpio(struct mxl111sf_state *state,
       int gpio, int direction, int val)
{
 struct mxl_gpio_cfg gpio_config = {
  .pin = gpio,
  .dir = direction,
  .val = val,
 };

 mxl_debug("(%d, %d, %d)", gpio, direction, val);

 return mxl111sf_config_gpio_pins(state, &gpio_config);
}
