
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_tunnel_info {scalar_t__ type; int port; } ;
struct qlcnic_hardware_context {int vxlan_port_count; scalar_t__ vxlan_port; } ;
struct qlcnic_adapter {int flags; struct qlcnic_hardware_context* ahw; } ;
struct net_device {int dummy; } ;


 int QLCNIC_ADD_VXLAN_PORT ;
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ ntohs (int ) ;
 int qlcnic_encap_rx_offload (struct qlcnic_adapter*) ;

__attribute__((used)) static void qlcnic_add_vxlan_port(struct net_device *netdev,
      struct udp_tunnel_info *ti)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
  return;




 if (!qlcnic_encap_rx_offload(adapter))
  return;
 if (!ahw->vxlan_port_count) {
  ahw->vxlan_port_count = 1;
  ahw->vxlan_port = ntohs(ti->port);
  adapter->flags |= QLCNIC_ADD_VXLAN_PORT;
  return;
 }
 if (ahw->vxlan_port == ntohs(ti->port))
  ahw->vxlan_port_count++;

}
