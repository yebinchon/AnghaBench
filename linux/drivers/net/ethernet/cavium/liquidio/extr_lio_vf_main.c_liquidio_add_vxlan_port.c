
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_tunnel_info {scalar_t__ type; int port; } ;
struct net_device {int dummy; } ;


 int OCTNET_CMD_VXLAN_PORT_ADD ;
 int OCTNET_CMD_VXLAN_PORT_CONFIG ;
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ;
 int htons (int ) ;
 int liquidio_vxlan_port_command (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static void liquidio_add_vxlan_port(struct net_device *netdev,
        struct udp_tunnel_info *ti)
{
 if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
  return;

 liquidio_vxlan_port_command(netdev,
        OCTNET_CMD_VXLAN_PORT_CONFIG,
        htons(ti->port),
        OCTNET_CMD_VXLAN_PORT_ADD);
}
