
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct udp_tunnel_info {int type; scalar_t__ sa_family; int port; } ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int flags; int flags2; int geneve_port; int vxlan_port; } ;


 scalar_t__ AF_INET ;
 int IXGBE_FLAG2_UDP_TUN_REREG_NEEDED ;
 int IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE ;
 int IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE ;
 int IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK ;
 int IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK ;


 int ixgbe_clear_udp_tunnel_port (struct ixgbe_adapter*,int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int ntohs (int ) ;

__attribute__((used)) static void ixgbe_del_udp_tunnel_port(struct net_device *dev,
          struct udp_tunnel_info *ti)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 u32 port_mask;

 if (ti->type != 128 &&
     ti->type != 129)
  return;

 if (ti->sa_family != AF_INET)
  return;

 switch (ti->type) {
 case 128:
  if (!(adapter->flags & IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE))
   return;

  if (adapter->vxlan_port != ti->port) {
   netdev_info(dev, "VXLAN port %d not found\n",
        ntohs(ti->port));
   return;
  }

  port_mask = IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK;
  break;
 case 129:
  if (!(adapter->flags & IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE))
   return;

  if (adapter->geneve_port != ti->port) {
   netdev_info(dev, "GENEVE port %d not found\n",
        ntohs(ti->port));
   return;
  }

  port_mask = IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK;
  break;
 default:
  return;
 }

 ixgbe_clear_udp_tunnel_port(adapter, port_mask);
 adapter->flags2 |= IXGBE_FLAG2_UDP_TUN_REREG_NEEDED;
}
