
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5k4ecgx {TYPE_1__* gpio; } ;
struct TYPE_2__ {int gpio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int gpio_free (int ) ;
 int gpio_is_valid (int ) ;

__attribute__((used)) static void s5k4ecgx_free_gpios(struct s5k4ecgx *priv)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(priv->gpio); i++) {
  if (!gpio_is_valid(priv->gpio[i].gpio))
   continue;
  gpio_free(priv->gpio[i].gpio);
  priv->gpio[i].gpio = -EINVAL;
 }
}
