
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;






 int MO_LED_NORM ;
 int MO_LED_OFF ;
 int MO_LED_ON ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int sky2_led (struct sky2_port*,int ) ;

__attribute__((used)) static int sky2_set_phys_id(struct net_device *dev,
       enum ethtool_phys_id_state state)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 switch (state) {
 case 131:
  return 1;
 case 130:
  sky2_led(sky2, MO_LED_NORM);
  break;
 case 128:
  sky2_led(sky2, MO_LED_ON);
  break;
 case 129:
  sky2_led(sky2, MO_LED_OFF);
  break;
 }

 return 0;
}
