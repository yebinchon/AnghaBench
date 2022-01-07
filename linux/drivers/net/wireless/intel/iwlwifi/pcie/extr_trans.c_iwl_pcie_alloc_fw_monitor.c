
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ num_blocks; } ;
struct iwl_trans {TYPE_1__ dbg; } ;


 scalar_t__ WARN (int,char*,int) ;
 int iwl_pcie_alloc_fw_monitor_block (struct iwl_trans*,int,int) ;

void iwl_pcie_alloc_fw_monitor(struct iwl_trans *trans, u8 max_power)
{
 if (!max_power) {

  max_power = 26;
 } else {
  max_power += 11;
 }

 if (WARN(max_power > 26,
   "External buffer size for monitor is too big %d, check the FW TLV\n",
   max_power))
  return;





 if (trans->dbg.num_blocks)
  return;

 iwl_pcie_alloc_fw_monitor_block(trans, max_power, 11);
}
