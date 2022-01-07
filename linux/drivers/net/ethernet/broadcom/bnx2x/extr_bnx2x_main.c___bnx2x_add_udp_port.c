
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnx2x_udp_tunnel {int count; scalar_t__ dst_port; } ;
struct bnx2x {int dev; struct bnx2x_udp_tunnel* udp_tunnel_ports; } ;
typedef enum bnx2x_udp_port_type { ____Placeholder_bnx2x_udp_port_type } bnx2x_udp_port_type ;


 int BNX2X_MSG_SP ;
 int BNX2X_SP_RTNL_CHANGE_UDP_PORT ;
 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int ,char*,int) ;
 int IS_PF (struct bnx2x*) ;
 int bnx2x_schedule_sp_rtnl (struct bnx2x*,int ,int ) ;
 int netif_running (int ) ;

__attribute__((used)) static void __bnx2x_add_udp_port(struct bnx2x *bp, u16 port,
     enum bnx2x_udp_port_type type)
{
 struct bnx2x_udp_tunnel *udp_port = &bp->udp_tunnel_ports[type];

 if (!netif_running(bp->dev) || !IS_PF(bp) || CHIP_IS_E1x(bp))
  return;

 if (udp_port->count && udp_port->dst_port == port) {
  udp_port->count++;
  return;
 }

 if (udp_port->count) {
  DP(BNX2X_MSG_SP,
     "UDP tunnel [%d] -  destination port limit reached\n",
     type);
  return;
 }

 udp_port->dst_port = port;
 udp_port->count = 1;
 bnx2x_schedule_sp_rtnl(bp, BNX2X_SP_RTNL_CHANGE_UDP_PORT, 0);
}
