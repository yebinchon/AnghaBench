
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int led_act_off; int led_link_off; int led_link_on; } ;


 int cancel_delayed_work (int *) ;
 int ipw_led_activity_off (struct ipw_priv*) ;
 int ipw_led_band_off (struct ipw_priv*) ;
 int ipw_led_link_off (struct ipw_priv*) ;

__attribute__((used)) static void ipw_led_shutdown(struct ipw_priv *priv)
{
 ipw_led_activity_off(priv);
 ipw_led_link_off(priv);
 ipw_led_band_off(priv);
 cancel_delayed_work(&priv->led_link_on);
 cancel_delayed_work(&priv->led_link_off);
 cancel_delayed_work(&priv->led_act_off);
}
