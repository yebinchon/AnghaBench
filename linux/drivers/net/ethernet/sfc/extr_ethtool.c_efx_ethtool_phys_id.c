
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
typedef enum efx_led_mode { ____Placeholder_efx_led_mode } efx_led_mode ;
struct TYPE_2__ {int (* set_id_led ) (struct efx_nic*,int) ;} ;


 int EFX_LED_DEFAULT ;
 int EFX_LED_OFF ;
 int EFX_LED_ON ;




 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,int) ;

__attribute__((used)) static int efx_ethtool_phys_id(struct net_device *net_dev,
          enum ethtool_phys_id_state state)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 enum efx_led_mode mode = EFX_LED_DEFAULT;

 switch (state) {
 case 128:
  mode = EFX_LED_ON;
  break;
 case 129:
  mode = EFX_LED_OFF;
  break;
 case 130:
  mode = EFX_LED_DEFAULT;
  break;
 case 131:
  return 1;
 }

 efx->type->set_id_led(efx, mode);
 return 0;
}
