
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int features; int overrides; } ;


 int BROADCAST_STORM_PROTECTION_RATE ;
 int KS8842_SWITCH_CTRL_1_OFFSET ;
 int PAUSE_FLOW_CTRL ;
 int STP_SUPPORT ;
 int SWITCH_PORT_NUM ;
 int SWITCH_RX_FLOW_CTRL ;
 int SWITCH_TX_FLOW_CTRL ;
 int hw_cfg_broad_storm (struct ksz_hw*,int ) ;
 int sw_chk (struct ksz_hw*,int ,int) ;
 int sw_ena_broad_storm (struct ksz_hw*,int) ;
 int sw_enable (struct ksz_hw*,int) ;
 int sw_init_broad_storm (struct ksz_hw*) ;
 int sw_init_mirror (struct ksz_hw*) ;
 int sw_init_prio (struct ksz_hw*) ;
 int sw_init_prio_rate (struct ksz_hw*) ;
 int sw_init_stp (struct ksz_hw*) ;
 int sw_init_vlan (struct ksz_hw*) ;
 int sw_set_global_ctrl (struct ksz_hw*) ;

__attribute__((used)) static void sw_setup(struct ksz_hw *hw)
{
 int port;

 sw_set_global_ctrl(hw);


 sw_init_broad_storm(hw);
 hw_cfg_broad_storm(hw, BROADCAST_STORM_PROTECTION_RATE);
 for (port = 0; port < SWITCH_PORT_NUM; port++)
  sw_ena_broad_storm(hw, port);

 sw_init_prio(hw);

 sw_init_mirror(hw);

 sw_init_prio_rate(hw);

 sw_init_vlan(hw);

 if (hw->features & STP_SUPPORT)
  sw_init_stp(hw);
 if (!sw_chk(hw, KS8842_SWITCH_CTRL_1_OFFSET,
   SWITCH_TX_FLOW_CTRL | SWITCH_RX_FLOW_CTRL))
  hw->overrides |= PAUSE_FLOW_CTRL;
 sw_enable(hw, 1);
}
