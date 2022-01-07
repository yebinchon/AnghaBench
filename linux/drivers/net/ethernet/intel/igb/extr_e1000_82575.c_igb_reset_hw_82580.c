
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int (* release_swfw_sync ) (struct e1000_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct e1000_hw*,int ) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ ops; } ;
struct TYPE_5__ {int global_device_reset; } ;
struct TYPE_6__ {TYPE_1__ _82575; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_2__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int E1000_CTRL ;
 int E1000_CTRL_DEV_RST ;
 int E1000_CTRL_RST ;
 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_RCTL ;
 int E1000_STATUS ;
 int E1000_STAT_DEV_RST_SET ;
 int E1000_SW_SYNCH_MB ;
 int E1000_TCTL ;
 int E1000_TCTL_PSP ;
 scalar_t__ e1000_82580 ;
 int hw_dbg (char*) ;
 scalar_t__ igb_check_alt_mac_addr (struct e1000_hw*) ;
 scalar_t__ igb_disable_pcie_master (struct e1000_hw*) ;
 scalar_t__ igb_get_auto_rd_done (struct e1000_hw*) ;
 scalar_t__ igb_reset_mdicnfg_82580 (struct e1000_hw*) ;
 int rd32 (int ) ;
 scalar_t__ stub1 (struct e1000_hw*,int ) ;
 int stub2 (struct e1000_hw*,int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static s32 igb_reset_hw_82580(struct e1000_hw *hw)
{
 s32 ret_val = 0;

 u16 swmbsw_mask = E1000_SW_SYNCH_MB;
 u32 ctrl;
 bool global_device_reset = hw->dev_spec._82575.global_device_reset;

 hw->dev_spec._82575.global_device_reset = 0;




 if (hw->mac.type == e1000_82580)
  global_device_reset = 0;


 ctrl = rd32(E1000_CTRL);




 ret_val = igb_disable_pcie_master(hw);
 if (ret_val)
  hw_dbg("PCI-E Master disable polling has failed.\n");

 hw_dbg("Masking off all interrupts\n");
 wr32(E1000_IMC, 0xffffffff);
 wr32(E1000_RCTL, 0);
 wr32(E1000_TCTL, E1000_TCTL_PSP);
 wrfl();

 usleep_range(10000, 11000);


 if (global_device_reset &&
  hw->mac.ops.acquire_swfw_sync(hw, swmbsw_mask))
   global_device_reset = 0;

 if (global_device_reset &&
  !(rd32(E1000_STATUS) & E1000_STAT_DEV_RST_SET))
  ctrl |= E1000_CTRL_DEV_RST;
 else
  ctrl |= E1000_CTRL_RST;

 wr32(E1000_CTRL, ctrl);
 wrfl();


 if (global_device_reset)
  usleep_range(5000, 6000);

 ret_val = igb_get_auto_rd_done(hw);
 if (ret_val) {




  hw_dbg("Auto Read Done did not complete\n");
 }


 wr32(E1000_STATUS, E1000_STAT_DEV_RST_SET);


 wr32(E1000_IMC, 0xffffffff);
 rd32(E1000_ICR);

 ret_val = igb_reset_mdicnfg_82580(hw);
 if (ret_val)
  hw_dbg("Could not reset MDICNFG based on EEPROM\n");


 ret_val = igb_check_alt_mac_addr(hw);


 if (global_device_reset)
  hw->mac.ops.release_swfw_sync(hw, swmbsw_mask);

 return ret_val;
}
