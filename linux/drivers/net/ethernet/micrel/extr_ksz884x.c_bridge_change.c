
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ksz_switch {int member; TYPE_1__* port_cfg; } ;
struct ksz_hw {struct ksz_switch* ksz_switch; } ;
struct TYPE_2__ {scalar_t__ stp_state; int member; } ;


 int HOST_MASK ;
 scalar_t__ STP_STATE_FORWARDING ;
 int STP_STATE_SIMPLE ;
 int SWITCH_PORT_NUM ;
 int port_set_stp_state (struct ksz_hw*,int,int ) ;
 int sw_block_addr (struct ksz_hw*) ;
 int sw_cfg_port_base_vlan (struct ksz_hw*,int,int) ;

__attribute__((used)) static void bridge_change(struct ksz_hw *hw)
{
 int port;
 u8 member;
 struct ksz_switch *sw = hw->ksz_switch;


 if (!sw->member) {
  port_set_stp_state(hw, SWITCH_PORT_NUM, STP_STATE_SIMPLE);
  sw_block_addr(hw);
 }
 for (port = 0; port < SWITCH_PORT_NUM; port++) {
  if (STP_STATE_FORWARDING == sw->port_cfg[port].stp_state)
   member = HOST_MASK | sw->member;
  else
   member = HOST_MASK | (1 << port);
  if (member != sw->port_cfg[port].member)
   sw_cfg_port_base_vlan(hw, port, member);
 }
}
