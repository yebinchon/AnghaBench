
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct s5c73m3 {TYPE_1__* gpio; } ;
struct TYPE_2__ {int gpio; } ;


 int gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int s5c73m3_gpio_set_value(struct s5c73m3 *priv, int id, u32 val)
{
 if (!gpio_is_valid(priv->gpio[id].gpio))
  return 0;
 gpio_set_value(priv->gpio[id].gpio, !!val);
 return 1;
}
