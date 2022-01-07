
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udp_tunnel_info {int type; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct fm10k_intfc {int geneve_port; int vxlan_port; TYPE_2__ hw; } ;




 int fm10k_insert_tunnel_port (int *,struct udp_tunnel_info*) ;
 scalar_t__ fm10k_mac_pf ;
 int fm10k_restore_udp_port_info (struct fm10k_intfc*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fm10k_udp_tunnel_add(struct net_device *dev,
     struct udp_tunnel_info *ti)
{
 struct fm10k_intfc *interface = netdev_priv(dev);


 if (interface->hw.mac.type != fm10k_mac_pf)
  return;

 switch (ti->type) {
 case 128:
  fm10k_insert_tunnel_port(&interface->vxlan_port, ti);
  break;
 case 129:
  fm10k_insert_tunnel_port(&interface->geneve_port, ti);
  break;
 default:
  return;
 }

 fm10k_restore_udp_port_info(interface);
}
