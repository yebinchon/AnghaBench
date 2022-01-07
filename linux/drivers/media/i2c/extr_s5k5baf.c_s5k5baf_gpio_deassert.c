
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf_gpio {int level; int gpio; } ;
struct s5k5baf {struct s5k5baf_gpio* gpios; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static void s5k5baf_gpio_deassert(struct s5k5baf *state, int id)
{
 struct s5k5baf_gpio *gpio = &state->gpios[id];

 gpio_set_value(gpio->gpio, !gpio->level);
}
