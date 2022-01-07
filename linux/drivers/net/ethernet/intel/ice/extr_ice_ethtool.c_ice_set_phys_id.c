
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_2__ {int port_info; } ;


 int EINVAL ;
 int EIO ;


 scalar_t__ ice_aq_set_port_id_led (int ,int,int *) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ice_set_phys_id(struct net_device *netdev, enum ethtool_phys_id_state state)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 bool led_active;

 switch (state) {
 case 129:
  led_active = 1;
  break;
 case 128:
  led_active = 0;
  break;
 default:
  return -EINVAL;
 }

 if (ice_aq_set_port_id_led(np->vsi->port_info, !led_active, ((void*)0)))
  return -EIO;

 return 0;
}
