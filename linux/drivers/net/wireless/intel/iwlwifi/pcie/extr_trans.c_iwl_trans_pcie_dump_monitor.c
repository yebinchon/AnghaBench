
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {TYPE_4__* dest_tlv; TYPE_2__* fw_mon; scalar_t__ num_blocks; } ;
struct iwl_trans {TYPE_5__ dbg; TYPE_3__* cfg; TYPE_1__* trans_cfg; } ;
struct iwl_fw_error_dump_fw_mon {int data; int fw_mon_base_ptr; } ;
struct iwl_fw_error_dump_data {void* len; scalar_t__ data; void* type; } ;
struct TYPE_9__ {scalar_t__ monitor_mode; int base_shift; scalar_t__ version; } ;
struct TYPE_8__ {scalar_t__ smem_offset; } ;
struct TYPE_7__ {int size; int block; } ;
struct TYPE_6__ {scalar_t__ device_family; } ;


 scalar_t__ IWL_DEVICE_FAMILY_7000 ;
 scalar_t__ IWL_DEVICE_FAMILY_AX210 ;
 int IWL_FW_ERROR_DUMP_FW_MONITOR ;
 int IWL_LDBG_M2S_BUF_BA_MSK ;
 int IWL_M2S_UNIT_SIZE ;
 scalar_t__ MARBH_MODE ;
 scalar_t__ SMEM_MODE ;
 void* cpu_to_le32 (int ) ;
 int iwl_read_prph (struct iwl_trans*,int) ;
 int iwl_trans_pci_dump_marbh_monitor (struct iwl_trans*,struct iwl_fw_error_dump_fw_mon*,int) ;
 int iwl_trans_pcie_dump_pointers (struct iwl_trans*,struct iwl_fw_error_dump_fw_mon*) ;
 int iwl_trans_read_mem (struct iwl_trans*,int,int ,int) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static u32
iwl_trans_pcie_dump_monitor(struct iwl_trans *trans,
       struct iwl_fw_error_dump_data **data,
       u32 monitor_len)
{
 u32 len = 0;

 if (trans->dbg.dest_tlv ||
     (trans->dbg.num_blocks &&
      (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000 ||
       trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_AX210))) {
  struct iwl_fw_error_dump_fw_mon *fw_mon_data;

  (*data)->type = cpu_to_le32(IWL_FW_ERROR_DUMP_FW_MONITOR);
  fw_mon_data = (void *)(*data)->data;

  iwl_trans_pcie_dump_pointers(trans, fw_mon_data);

  len += sizeof(**data) + sizeof(*fw_mon_data);
  if (trans->dbg.num_blocks) {
   memcpy(fw_mon_data->data,
          trans->dbg.fw_mon[0].block,
          trans->dbg.fw_mon[0].size);

   monitor_len = trans->dbg.fw_mon[0].size;
  } else if (trans->dbg.dest_tlv->monitor_mode == SMEM_MODE) {
   u32 base = le32_to_cpu(fw_mon_data->fw_mon_base_ptr);




   if (trans->dbg.dest_tlv->version) {
    base = (iwl_read_prph(trans, base) &
     IWL_LDBG_M2S_BUF_BA_MSK) <<
           trans->dbg.dest_tlv->base_shift;
    base *= IWL_M2S_UNIT_SIZE;
    base += trans->cfg->smem_offset;
   } else {
    base = iwl_read_prph(trans, base) <<
           trans->dbg.dest_tlv->base_shift;
   }

   iwl_trans_read_mem(trans, base, fw_mon_data->data,
        monitor_len / sizeof(u32));
  } else if (trans->dbg.dest_tlv->monitor_mode == MARBH_MODE) {
   monitor_len =
    iwl_trans_pci_dump_marbh_monitor(trans,
         fw_mon_data,
         monitor_len);
  } else {

   monitor_len = 0;
  }

  len += monitor_len;
  (*data)->len = cpu_to_le32(monitor_len + sizeof(*fw_mon_data));
 }

 return len;
}
