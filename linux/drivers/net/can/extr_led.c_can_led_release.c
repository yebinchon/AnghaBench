
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct can_priv {int rxtx_led_trig; int rx_led_trig; int tx_led_trig; } ;


 int led_trigger_unregister_simple (int ) ;
 struct can_priv* netdev_priv (int ) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static void can_led_release(struct device *gendev, void *res)
{
 struct can_priv *priv = netdev_priv(to_net_dev(gendev));

 led_trigger_unregister_simple(priv->tx_led_trig);
 led_trigger_unregister_simple(priv->rx_led_trig);
 led_trigger_unregister_simple(priv->rxtx_led_trig);
}
