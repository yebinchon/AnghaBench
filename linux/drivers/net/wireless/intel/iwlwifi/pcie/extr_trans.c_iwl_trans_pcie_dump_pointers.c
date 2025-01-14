
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* dest_tlv; } ;
struct iwl_trans {TYPE_3__* trans_cfg; TYPE_2__ dbg; } ;
struct iwl_fw_error_dump_fw_mon {void* fw_mon_wr_ptr; void* fw_mon_base_high_ptr; void* fw_mon_base_ptr; void* fw_mon_cycle_cnt; } ;
struct TYPE_6__ {scalar_t__ device_family; } ;
struct TYPE_4__ {int base_reg; int wrap_count; int write_ptr_reg; } ;


 int DBGC_CUR_DBGBUF_BASE_ADDR_LSB ;
 int DBGC_CUR_DBGBUF_BASE_ADDR_MSB ;
 int DBGC_CUR_DBGBUF_STATUS ;
 int DBGC_CUR_DBGBUF_STATUS_OFFSET_MSK ;
 int DBGC_DBGBUF_WRAP_AROUND ;
 scalar_t__ IWL_DEVICE_FAMILY_AX210 ;
 int MON_BUFF_BASE_ADDR ;
 int MON_BUFF_CYCLE_CNT ;
 int MON_BUFF_WRPTR ;
 void* cpu_to_le32 (int ) ;
 int iwl_read_prph (struct iwl_trans*,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void
iwl_trans_pcie_dump_pointers(struct iwl_trans *trans,
        struct iwl_fw_error_dump_fw_mon *fw_mon_data)
{
 u32 base, base_high, write_ptr, write_ptr_val, wrap_cnt;

 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_AX210) {
  base = DBGC_CUR_DBGBUF_BASE_ADDR_LSB;
  base_high = DBGC_CUR_DBGBUF_BASE_ADDR_MSB;
  write_ptr = DBGC_CUR_DBGBUF_STATUS;
  wrap_cnt = DBGC_DBGBUF_WRAP_AROUND;
 } else if (trans->dbg.dest_tlv) {
  write_ptr = le32_to_cpu(trans->dbg.dest_tlv->write_ptr_reg);
  wrap_cnt = le32_to_cpu(trans->dbg.dest_tlv->wrap_count);
  base = le32_to_cpu(trans->dbg.dest_tlv->base_reg);
 } else {
  base = MON_BUFF_BASE_ADDR;
  write_ptr = MON_BUFF_WRPTR;
  wrap_cnt = MON_BUFF_CYCLE_CNT;
 }

 write_ptr_val = iwl_read_prph(trans, write_ptr);
 fw_mon_data->fw_mon_cycle_cnt =
  cpu_to_le32(iwl_read_prph(trans, wrap_cnt));
 fw_mon_data->fw_mon_base_ptr =
  cpu_to_le32(iwl_read_prph(trans, base));
 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_AX210) {
  fw_mon_data->fw_mon_base_high_ptr =
   cpu_to_le32(iwl_read_prph(trans, base_high));
  write_ptr_val &= DBGC_CUR_DBGBUF_STATUS_OFFSET_MSK;
 }
 fw_mon_data->fw_mon_wr_ptr = cpu_to_le32(write_ptr_val);
}
