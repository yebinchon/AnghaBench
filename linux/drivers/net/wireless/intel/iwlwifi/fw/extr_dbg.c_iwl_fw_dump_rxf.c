
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iwl_fwrt_shared_mem_cfg {int num_lmacs; TYPE_2__* lmac; int rxfifo2_size; } ;
struct iwl_fw_runtime {TYPE_3__* trans; struct iwl_fwrt_shared_mem_cfg smem_cfg; } ;
struct iwl_fw_error_dump_data {int dummy; } ;
struct TYPE_7__ {TYPE_1__* trans_cfg; } ;
struct TYPE_6__ {int rxfifo1_size; } ;
struct TYPE_5__ {scalar_t__ umac_prph_offset; } ;


 int IWL_DEBUG_INFO (struct iwl_fw_runtime*,char*) ;
 int IWL_FW_ERROR_DUMP_RXF ;
 scalar_t__ LMAC2_PRPH_OFFSET ;
 scalar_t__ RXF_DIFF_FROM_PREV ;
 scalar_t__ iwl_fw_dbg_type_on (struct iwl_fw_runtime*,int ) ;
 int iwl_fwrt_dump_rxf (struct iwl_fw_runtime*,struct iwl_fw_error_dump_data**,int ,scalar_t__,int) ;
 int iwl_trans_grab_nic_access (TYPE_3__*,unsigned long*) ;
 int iwl_trans_release_nic_access (TYPE_3__*,unsigned long*) ;

__attribute__((used)) static void iwl_fw_dump_rxf(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_error_dump_data **dump_data)
{
 struct iwl_fwrt_shared_mem_cfg *cfg = &fwrt->smem_cfg;
 unsigned long flags;

 IWL_DEBUG_INFO(fwrt, "WRT RX FIFO dump\n");

 if (!iwl_trans_grab_nic_access(fwrt->trans, &flags))
  return;

 if (iwl_fw_dbg_type_on(fwrt, IWL_FW_ERROR_DUMP_RXF)) {

  iwl_fwrt_dump_rxf(fwrt, dump_data,
      cfg->lmac[0].rxfifo1_size, 0, 0);

  iwl_fwrt_dump_rxf(fwrt, dump_data, cfg->rxfifo2_size,
      RXF_DIFF_FROM_PREV +
      fwrt->trans->trans_cfg->umac_prph_offset, 1);

  if (fwrt->smem_cfg.num_lmacs > 1)
   iwl_fwrt_dump_rxf(fwrt, dump_data,
       cfg->lmac[1].rxfifo1_size,
       LMAC2_PRPH_OFFSET, 2);
 }

 iwl_trans_release_nic_access(fwrt->trans, &flags);
}
