
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5c73m3 {TYPE_1__* gpio; } ;
struct TYPE_2__ {int level; } ;


 int s5c73m3_gpio_set_value (struct s5c73m3*,int,int) ;

__attribute__((used)) static int s5c73m3_gpio_deassert(struct s5c73m3 *priv, int id)
{
 return s5c73m3_gpio_set_value(priv, id, !priv->gpio[id].level);
}
