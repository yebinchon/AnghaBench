
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5k6aa {TYPE_1__* gpio; } ;
struct TYPE_2__ {int level; } ;


 int s5k6aa_gpio_set_value (struct s5k6aa*,int,int ) ;

__attribute__((used)) static int s5k6aa_gpio_assert(struct s5k6aa *priv, int id)
{
 return s5k6aa_gpio_set_value(priv, id, priv->gpio[id].level);
}
