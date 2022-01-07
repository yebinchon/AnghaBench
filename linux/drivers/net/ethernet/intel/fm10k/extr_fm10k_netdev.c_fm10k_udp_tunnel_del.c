
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udp_tunnel_info {int type; } ;
struct net_device {int dummy; } ;
struct fm10k_udp_port {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct fm10k_intfc {int geneve_port; int vxlan_port; TYPE_2__ hw; } ;




 scalar_t__ fm10k_mac_pf ;
 struct fm10k_udp_port* fm10k_remove_tunnel_port (int *,struct udp_tunnel_info*) ;
 int fm10k_restore_udp_port_info (struct fm10k_intfc*) ;
 int kfree (struct fm10k_udp_port*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fm10k_udp_tunnel_del(struct net_device *dev,
     struct udp_tunnel_info *ti)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 struct fm10k_udp_port *port = ((void*)0);

 if (interface->hw.mac.type != fm10k_mac_pf)
  return;

 switch (ti->type) {
 case 128:
  port = fm10k_remove_tunnel_port(&interface->vxlan_port, ti);
  break;
 case 129:
  port = fm10k_remove_tunnel_port(&interface->geneve_port, ti);
  break;
 default:
  return;
 }


 kfree(port);

 fm10k_restore_udp_port_info(interface);
}
