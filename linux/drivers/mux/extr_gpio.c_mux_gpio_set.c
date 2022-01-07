
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mux_gpio {TYPE_1__* gpios; } ;
struct mux_control {int chip; } ;
struct TYPE_2__ {int info; int desc; int ndescs; } ;


 int BITS_PER_TYPE (int) ;
 int DECLARE_BITMAP (int*,int ) ;
 int gpiod_set_array_value_cansleep (int ,int ,int ,int*) ;
 struct mux_gpio* mux_chip_priv (int ) ;
 int* values ;

__attribute__((used)) static int mux_gpio_set(struct mux_control *mux, int state)
{
 struct mux_gpio *mux_gpio = mux_chip_priv(mux->chip);
 DECLARE_BITMAP(values, BITS_PER_TYPE(state));

 values[0] = state;

 gpiod_set_array_value_cansleep(mux_gpio->gpios->ndescs,
           mux_gpio->gpios->desc,
           mux_gpio->gpios->info, values);

 return 0;
}
