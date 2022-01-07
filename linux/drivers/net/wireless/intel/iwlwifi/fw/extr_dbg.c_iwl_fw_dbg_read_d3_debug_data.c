
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d3_debug_data; } ;
struct iwl_fw_runtime {TYPE_1__ dump; TYPE_2__* trans; } ;
struct iwl_cfg {int d3_debug_data_length; int d3_debug_data_base_addr; } ;
struct TYPE_4__ {struct iwl_cfg* cfg; } ;


 int GFP_KERNEL ;
 int IWL_ERR (struct iwl_fw_runtime*,char*) ;
 int iwl_fw_dbg_is_d3_debug_enabled (struct iwl_fw_runtime*) ;
 int iwl_trans_read_mem_bytes (TYPE_2__*,int ,int ,int ) ;
 int kmalloc (int ,int ) ;

void iwl_fw_dbg_read_d3_debug_data(struct iwl_fw_runtime *fwrt)
{
 const struct iwl_cfg *cfg = fwrt->trans->cfg;

 if (!iwl_fw_dbg_is_d3_debug_enabled(fwrt))
  return;

 if (!fwrt->dump.d3_debug_data) {
  fwrt->dump.d3_debug_data = kmalloc(cfg->d3_debug_data_length,
         GFP_KERNEL);
  if (!fwrt->dump.d3_debug_data) {
   IWL_ERR(fwrt,
    "failed to allocate memory for D3 debug data\n");
   return;
  }
 }


 iwl_trans_read_mem_bytes(fwrt->trans, cfg->d3_debug_data_base_addr,
     fwrt->dump.d3_debug_data,
     cfg->d3_debug_data_length);
}
