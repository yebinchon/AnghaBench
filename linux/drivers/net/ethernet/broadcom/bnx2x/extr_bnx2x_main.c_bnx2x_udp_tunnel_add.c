
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct udp_tunnel_info {int type; int port; } ;
struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_UDP_PORT_GENEVE ;
 int BNX2X_UDP_PORT_VXLAN ;


 int __bnx2x_add_udp_port (struct bnx2x*,int ,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int ntohs (int ) ;

__attribute__((used)) static void bnx2x_udp_tunnel_add(struct net_device *netdev,
     struct udp_tunnel_info *ti)
{
 struct bnx2x *bp = netdev_priv(netdev);
 u16 t_port = ntohs(ti->port);

 switch (ti->type) {
 case 128:
  __bnx2x_add_udp_port(bp, t_port, BNX2X_UDP_PORT_VXLAN);
  break;
 case 129:
  __bnx2x_add_udp_port(bp, t_port, BNX2X_UDP_PORT_GENEVE);
  break;
 default:
  break;
 }
}
