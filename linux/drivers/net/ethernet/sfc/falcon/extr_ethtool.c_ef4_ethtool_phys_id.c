
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ef4_nic {TYPE_1__* type; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
typedef enum ef4_led_mode { ____Placeholder_ef4_led_mode } ef4_led_mode ;
struct TYPE_2__ {int (* set_id_led ) (struct ef4_nic*,int) ;} ;


 int EF4_LED_DEFAULT ;
 int EF4_LED_OFF ;
 int EF4_LED_ON ;




 struct ef4_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct ef4_nic*,int) ;

__attribute__((used)) static int ef4_ethtool_phys_id(struct net_device *net_dev,
          enum ethtool_phys_id_state state)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 enum ef4_led_mode mode = EF4_LED_DEFAULT;

 switch (state) {
 case 128:
  mode = EF4_LED_ON;
  break;
 case 129:
  mode = EF4_LED_OFF;
  break;
 case 130:
  mode = EF4_LED_DEFAULT;
  break;
 case 131:
  return 1;
 }

 efx->type->set_id_led(efx, mode);
 return 0;
}
