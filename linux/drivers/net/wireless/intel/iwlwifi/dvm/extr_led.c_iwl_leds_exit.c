
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct iwl_priv {TYPE_1__ led; int led_registered; } ;


 int kfree (int ) ;
 int led_classdev_unregister (TYPE_1__*) ;

void iwl_leds_exit(struct iwl_priv *priv)
{
 if (!priv->led_registered)
  return;

 led_classdev_unregister(&priv->led);
 kfree(priv->led.name);
}
