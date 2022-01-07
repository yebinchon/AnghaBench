
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct bnx2x_udp_tunnel {void* dst_port; scalar_t__ count; } ;
struct bnx2x_func_switch_update_params {int changes; void* vxlan_dst_port; void* geneve_dst_port; } ;
struct TYPE_2__ {struct bnx2x_func_switch_update_params switch_update; } ;
struct bnx2x_func_state_params {int cmd; int * f_obj; int ramrod_flags; TYPE_1__ params; int * member_0; } ;
struct bnx2x {struct bnx2x_udp_tunnel* udp_tunnel_ports; int func_obj; } ;


 int BNX2X_ERR (char*,void*,void*,int) ;
 int BNX2X_F_CMD_SWITCH_UPDATE ;
 int BNX2X_F_UPDATE_TUNNEL_CFG_CHNG ;
 int BNX2X_F_UPDATE_TUNNEL_INNER_RSS ;
 int BNX2X_MSG_SP ;
 size_t BNX2X_UDP_PORT_GENEVE ;
 size_t BNX2X_UDP_PORT_VXLAN ;
 int DP (int ,char*,void*,void*) ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_RETRY ;
 int __set_bit (int ,int *) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;

__attribute__((used)) static int bnx2x_udp_port_update(struct bnx2x *bp)
{
 struct bnx2x_func_switch_update_params *switch_update_params;
 struct bnx2x_func_state_params func_params = {((void*)0)};
 struct bnx2x_udp_tunnel *udp_tunnel;
 u16 vxlan_port = 0, geneve_port = 0;
 int rc;

 switch_update_params = &func_params.params.switch_update;


 __set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
 __set_bit(RAMROD_RETRY, &func_params.ramrod_flags);

 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_SWITCH_UPDATE;


 __set_bit(BNX2X_F_UPDATE_TUNNEL_CFG_CHNG,
    &switch_update_params->changes);

 if (bp->udp_tunnel_ports[BNX2X_UDP_PORT_GENEVE].count) {
  udp_tunnel = &bp->udp_tunnel_ports[BNX2X_UDP_PORT_GENEVE];
  geneve_port = udp_tunnel->dst_port;
  switch_update_params->geneve_dst_port = geneve_port;
 }

 if (bp->udp_tunnel_ports[BNX2X_UDP_PORT_VXLAN].count) {
  udp_tunnel = &bp->udp_tunnel_ports[BNX2X_UDP_PORT_VXLAN];
  vxlan_port = udp_tunnel->dst_port;
  switch_update_params->vxlan_dst_port = vxlan_port;
 }


 __set_bit(BNX2X_F_UPDATE_TUNNEL_INNER_RSS,
    &switch_update_params->changes);

 rc = bnx2x_func_state_change(bp, &func_params);
 if (rc)
  BNX2X_ERR("failed to set UDP dst port to %04x %04x (rc = 0x%x)\n",
     vxlan_port, geneve_port, rc);
 else
  DP(BNX2X_MSG_SP,
     "Configured UDP ports: Vxlan [%04x] Geneve [%04x]\n",
     vxlan_port, geneve_port);

 return rc;
}
