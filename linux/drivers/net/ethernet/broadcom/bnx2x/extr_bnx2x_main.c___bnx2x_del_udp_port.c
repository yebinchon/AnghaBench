
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnx2x_udp_tunnel {scalar_t__ dst_port; scalar_t__ count; } ;
struct bnx2x {int dev; struct bnx2x_udp_tunnel* udp_tunnel_ports; } ;
typedef enum bnx2x_udp_port_type { ____Placeholder_bnx2x_udp_port_type } bnx2x_udp_port_type ;


 int BNX2X_MSG_SP ;
 int BNX2X_SP_RTNL_CHANGE_UDP_PORT ;
 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int ,char*,int,...) ;
 int IS_PF (struct bnx2x*) ;
 int bnx2x_schedule_sp_rtnl (struct bnx2x*,int ,int ) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static void __bnx2x_del_udp_port(struct bnx2x *bp, u16 port,
     enum bnx2x_udp_port_type type)
{
 struct bnx2x_udp_tunnel *udp_port = &bp->udp_tunnel_ports[type];

 if (!IS_PF(bp) || CHIP_IS_E1x(bp))
  return;

 if (!udp_port->count || udp_port->dst_port != port) {
  DP(BNX2X_MSG_SP, "Invalid UDP tunnel [%d] port\n",
     type);
  return;
 }


 udp_port->count--;
 if (udp_port->count)
  return;
 udp_port->dst_port = 0;

 if (netif_running(bp->dev))
  bnx2x_schedule_sp_rtnl(bp, BNX2X_SP_RTNL_CHANGE_UDP_PORT, 0);
 else
  DP(BNX2X_MSG_SP, "Deleted UDP tunnel [%d] port %d\n",
     type, port);
}
