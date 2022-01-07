
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int IGC_CTRL ;
 int IGC_CTRL_DEV_RST ;
 int IGC_ICR ;
 int IGC_IMC ;
 int IGC_RCTL ;
 int IGC_TCTL ;
 int IGC_TCTL_PSP ;
 int hw_dbg (char*) ;
 scalar_t__ igc_disable_pcie_master (struct igc_hw*) ;
 scalar_t__ igc_get_auto_rd_done (struct igc_hw*) ;
 int rd32 (int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static s32 igc_reset_hw_base(struct igc_hw *hw)
{
 s32 ret_val;
 u32 ctrl;




 ret_val = igc_disable_pcie_master(hw);
 if (ret_val)
  hw_dbg("PCI-E Master disable polling has failed.\n");

 hw_dbg("Masking off all interrupts\n");
 wr32(IGC_IMC, 0xffffffff);

 wr32(IGC_RCTL, 0);
 wr32(IGC_TCTL, IGC_TCTL_PSP);
 wrfl();

 usleep_range(10000, 20000);

 ctrl = rd32(IGC_CTRL);

 hw_dbg("Issuing a global reset to MAC\n");
 wr32(IGC_CTRL, ctrl | IGC_CTRL_DEV_RST);

 ret_val = igc_get_auto_rd_done(hw);
 if (ret_val) {




  hw_dbg("Auto Read Done did not complete\n");
 }


 wr32(IGC_IMC, 0xffffffff);
 rd32(IGC_ICR);

 return ret_val;
}
