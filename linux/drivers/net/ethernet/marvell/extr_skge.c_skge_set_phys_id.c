
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;






 int LED_MODE_OFF ;
 int LED_MODE_ON ;
 int LED_MODE_TST ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int skge_led (struct skge_port*,int ) ;

__attribute__((used)) static int skge_set_phys_id(struct net_device *dev,
       enum ethtool_phys_id_state state)
{
 struct skge_port *skge = netdev_priv(dev);

 switch (state) {
 case 131:
  return 2;

 case 128:
  skge_led(skge, LED_MODE_TST);
  break;

 case 129:
  skge_led(skge, LED_MODE_OFF);
  break;

 case 130:

  skge_led(skge, netif_running(dev) ? LED_MODE_ON : LED_MODE_OFF);
 }

 return 0;
}
