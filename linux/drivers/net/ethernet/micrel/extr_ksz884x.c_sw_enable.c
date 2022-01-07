
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dev_count; scalar_t__ io; } ;


 int HOST_MASK ;
 int KS8842_START ;
 scalar_t__ KS884X_CHIP_ID_OFFSET ;
 int PORT_MASK ;
 int STP_STATE_DISABLED ;
 int STP_STATE_FORWARDING ;
 int STP_STATE_SIMPLE ;
 int SWITCH_PORT_NUM ;
 int port_set_stp_state (struct ksz_hw*,int,int ) ;
 int sw_cfg_port_base_vlan (struct ksz_hw*,int,int) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void sw_enable(struct ksz_hw *hw, int enable)
{
 int port;

 for (port = 0; port < SWITCH_PORT_NUM; port++) {
  if (hw->dev_count > 1) {

   sw_cfg_port_base_vlan(hw, port,
    HOST_MASK | (1 << port));
   port_set_stp_state(hw, port, STP_STATE_DISABLED);
  } else {
   sw_cfg_port_base_vlan(hw, port, PORT_MASK);
   port_set_stp_state(hw, port, STP_STATE_FORWARDING);
  }
 }
 if (hw->dev_count > 1)
  port_set_stp_state(hw, SWITCH_PORT_NUM, STP_STATE_SIMPLE);
 else
  port_set_stp_state(hw, SWITCH_PORT_NUM, STP_STATE_FORWARDING);

 if (enable)
  enable = KS8842_START;
 writew(enable, hw->io + KS884X_CHIP_ID_OFFSET);
}
