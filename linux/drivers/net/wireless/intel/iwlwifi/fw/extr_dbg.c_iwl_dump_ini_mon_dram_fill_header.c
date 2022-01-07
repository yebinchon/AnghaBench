
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fw_runtime {TYPE_2__* trans; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct iwl_fw_ini_monitor_dump {int dummy; } ;
struct TYPE_4__ {TYPE_1__* trans_cfg; } ;
struct TYPE_3__ {int device_family; } ;




 int IWL_ERR (struct iwl_fw_runtime*,char*,int) ;
 int MON_BUFF_CYCLE_CNT_VER2 ;
 int MON_BUFF_WRPTR_VER2 ;
 void* iwl_dump_ini_mon_fill_header (struct iwl_fw_runtime*,struct iwl_fw_ini_region_cfg*,struct iwl_fw_ini_monitor_dump*,int,int,int,int) ;

__attribute__((used)) static void
*iwl_dump_ini_mon_dram_fill_header(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_ini_region_cfg *reg,
       void *data)
{
 struct iwl_fw_ini_monitor_dump *mon_dump = (void *)data;
 u32 write_ptr_addr, write_ptr_msk, cycle_cnt_addr, cycle_cnt_msk;

 switch (fwrt->trans->trans_cfg->device_family) {
 case 128:
 case 129:
  write_ptr_addr = MON_BUFF_WRPTR_VER2;
  write_ptr_msk = -1;
  cycle_cnt_addr = MON_BUFF_CYCLE_CNT_VER2;
  cycle_cnt_msk = -1;
  break;
 default:
  IWL_ERR(fwrt, "Unsupported device family %d\n",
   fwrt->trans->trans_cfg->device_family);
  return ((void*)0);
 }

 return iwl_dump_ini_mon_fill_header(fwrt, reg, mon_dump, write_ptr_addr,
         write_ptr_msk, cycle_cnt_addr,
         cycle_cnt_msk);
}
