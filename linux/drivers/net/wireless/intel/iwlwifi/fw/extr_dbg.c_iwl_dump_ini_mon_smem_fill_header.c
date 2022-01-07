
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_fw_runtime {TYPE_2__* trans; } ;
struct iwl_fw_ini_region_cfg {int dummy; } ;
struct iwl_fw_ini_monitor_dump {int dummy; } ;
struct iwl_cfg {int fw_mon_smem_cycle_cnt_ptr_msk; int fw_mon_smem_cycle_cnt_ptr_addr; int fw_mon_smem_write_ptr_msk; int fw_mon_smem_write_ptr_addr; } ;
struct TYPE_4__ {TYPE_1__* trans_cfg; struct iwl_cfg* cfg; } ;
struct TYPE_3__ {scalar_t__ device_family; } ;


 scalar_t__ IWL_DEVICE_FAMILY_22000 ;
 scalar_t__ IWL_DEVICE_FAMILY_9000 ;
 int IWL_ERR (struct iwl_fw_runtime*,char*,scalar_t__) ;
 void* iwl_dump_ini_mon_fill_header (struct iwl_fw_runtime*,struct iwl_fw_ini_region_cfg*,struct iwl_fw_ini_monitor_dump*,int ,int ,int ,int ) ;

__attribute__((used)) static void
*iwl_dump_ini_mon_smem_fill_header(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_ini_region_cfg *reg,
       void *data)
{
 struct iwl_fw_ini_monitor_dump *mon_dump = (void *)data;
 const struct iwl_cfg *cfg = fwrt->trans->cfg;

 if (fwrt->trans->trans_cfg->device_family != IWL_DEVICE_FAMILY_9000 &&
     fwrt->trans->trans_cfg->device_family != IWL_DEVICE_FAMILY_22000) {
  IWL_ERR(fwrt, "Unsupported device family %d\n",
   fwrt->trans->trans_cfg->device_family);
  return ((void*)0);
 }

 return iwl_dump_ini_mon_fill_header(fwrt, reg, mon_dump,
         cfg->fw_mon_smem_write_ptr_addr,
         cfg->fw_mon_smem_write_ptr_msk,
         cfg->fw_mon_smem_cycle_cnt_ptr_addr,
         cfg->fw_mon_smem_cycle_cnt_ptr_msk);

}
