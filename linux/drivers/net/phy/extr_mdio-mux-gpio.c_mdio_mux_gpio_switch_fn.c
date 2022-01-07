
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdio_mux_gpio_state {TYPE_1__* gpios; } ;
struct TYPE_2__ {int info; int desc; int ndescs; } ;


 int BITS_PER_TYPE (int) ;
 int DECLARE_BITMAP (int*,int ) ;
 int gpiod_set_array_value_cansleep (int ,int ,int ,int*) ;
 int* values ;

__attribute__((used)) static int mdio_mux_gpio_switch_fn(int current_child, int desired_child,
       void *data)
{
 struct mdio_mux_gpio_state *s = data;
 DECLARE_BITMAP(values, BITS_PER_TYPE(desired_child));

 if (current_child == desired_child)
  return 0;

 values[0] = desired_child;

 gpiod_set_array_value_cansleep(s->gpios->ndescs, s->gpios->desc,
           s->gpios->info, values);

 return 0;
}
