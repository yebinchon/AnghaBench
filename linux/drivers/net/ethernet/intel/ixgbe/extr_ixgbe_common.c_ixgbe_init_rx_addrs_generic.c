
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* init_uta_tables ) (struct ixgbe_hw*) ;int (* clear_vmdq ) (struct ixgbe_hw*,int ,int ) ;int (* set_rar ) (struct ixgbe_hw*,int ,int ,int ,int ) ;int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_6__ {int num_rar_entries; int mcft_size; TYPE_2__ ops; int mc_filter_type; int addr; } ;
struct TYPE_4__ {int rar_used_count; scalar_t__ mta_in_use; scalar_t__ overflow_promisc; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ addr_ctrl; } ;
typedef int s32 ;


 int IXGBE_CLEAR_VMDQ_ALL ;
 int IXGBE_MCSTCTRL ;
 int IXGBE_MTA (int) ;
 int IXGBE_RAH (int) ;
 int IXGBE_RAH_AV ;
 int IXGBE_RAL (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int hw_dbg (struct ixgbe_hw*,char*,...) ;
 int is_valid_ether_addr (int ) ;
 int stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int ,int ) ;
 int stub3 (struct ixgbe_hw*,int ,int ) ;
 int stub4 (struct ixgbe_hw*) ;

s32 ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw)
{
 u32 i;
 u32 rar_entries = hw->mac.num_rar_entries;






 if (!is_valid_ether_addr(hw->mac.addr)) {

  hw->mac.ops.get_mac_addr(hw, hw->mac.addr);

  hw_dbg(hw, " Keeping Current RAR0 Addr =%pM\n", hw->mac.addr);
 } else {

  hw_dbg(hw, "Overriding MAC Address in RAR[0]\n");
  hw_dbg(hw, " New MAC Addr =%pM\n", hw->mac.addr);

  hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, IXGBE_RAH_AV);
 }


 hw->mac.ops.clear_vmdq(hw, 0, IXGBE_CLEAR_VMDQ_ALL);

 hw->addr_ctrl.overflow_promisc = 0;

 hw->addr_ctrl.rar_used_count = 1;


 hw_dbg(hw, "Clearing RAR[1-%d]\n", rar_entries - 1);
 for (i = 1; i < rar_entries; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_RAL(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_RAH(i), 0);
 }


 hw->addr_ctrl.mta_in_use = 0;
 IXGBE_WRITE_REG(hw, IXGBE_MCSTCTRL, hw->mac.mc_filter_type);

 hw_dbg(hw, " Clearing MTA\n");
 for (i = 0; i < hw->mac.mcft_size; i++)
  IXGBE_WRITE_REG(hw, IXGBE_MTA(i), 0);

 if (hw->mac.ops.init_uta_tables)
  hw->mac.ops.init_uta_tables(hw);

 return 0;
}
