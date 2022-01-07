
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fw_runtime {int trans; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct TYPE_2__ {void* version; } ;
struct iwl_fw_ini_monitor_dump {void* ranges; void* cycle_cnt; void* write_ptr; TYPE_1__ header; } ;


 int IWL_ERR (struct iwl_fw_runtime*,char*) ;
 int IWL_INI_DUMP_VER ;
 void* cpu_to_le32 (int) ;
 int iwl_read_prph_no_grab (int ,int) ;
 int iwl_trans_grab_nic_access (int ,unsigned long*) ;
 int iwl_trans_release_nic_access (int ,unsigned long*) ;

__attribute__((used)) static void
*iwl_dump_ini_mon_fill_header(struct iwl_fw_runtime *fwrt,
         struct iwl_fw_ini_region_cfg *reg,
         struct iwl_fw_ini_monitor_dump *data,
         u32 write_ptr_addr, u32 write_ptr_msk,
         u32 cycle_cnt_addr, u32 cycle_cnt_msk)
{
 u32 write_ptr, cycle_cnt;
 unsigned long flags;

 if (!iwl_trans_grab_nic_access(fwrt->trans, &flags)) {
  IWL_ERR(fwrt, "Failed to get monitor header\n");
  return ((void*)0);
 }

 write_ptr = iwl_read_prph_no_grab(fwrt->trans, write_ptr_addr);
 cycle_cnt = iwl_read_prph_no_grab(fwrt->trans, cycle_cnt_addr);

 iwl_trans_release_nic_access(fwrt->trans, &flags);

 data->header.version = cpu_to_le32(IWL_INI_DUMP_VER);
 data->write_ptr = cpu_to_le32(write_ptr & write_ptr_msk);
 data->cycle_cnt = cpu_to_le32(cycle_cnt & cycle_cnt_msk);

 return data->ranges;
}
