
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int ipw_led_activity_off (struct ipw_priv*) ;
 int ipw_led_link_off (struct ipw_priv*) ;

__attribute__((used)) static void ipw_led_radio_off(struct ipw_priv *priv)
{
 ipw_led_activity_off(priv);
 ipw_led_link_off(priv);
}
