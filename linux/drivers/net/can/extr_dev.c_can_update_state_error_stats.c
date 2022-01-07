
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int bus_off; int error_passive; int error_warning; } ;
struct can_priv {int state; TYPE_1__ can_stats; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;





 struct can_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void can_update_state_error_stats(struct net_device *dev,
      enum can_state new_state)
{
 struct can_priv *priv = netdev_priv(dev);

 if (new_state <= priv->state)
  return;

 switch (new_state) {
 case 128:
  priv->can_stats.error_warning++;
  break;
 case 129:
  priv->can_stats.error_passive++;
  break;
 case 130:
  priv->can_stats.bus_off++;
  break;
 default:
  break;
 }
}
