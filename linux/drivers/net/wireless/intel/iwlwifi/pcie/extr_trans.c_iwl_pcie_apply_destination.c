
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int n_dest_reg; TYPE_3__* fw_mon; int num_blocks; struct iwl_fw_dbg_dest_tlv_v1* dest_tlv; } ;
struct iwl_trans {TYPE_4__ dbg; TYPE_2__* trans_cfg; } ;
struct iwl_fw_dbg_dest_tlv_v1 {scalar_t__ monitor_mode; int base_shift; int end_shift; int end_reg; int base_reg; TYPE_1__* reg_ops; int size_power; } ;
struct TYPE_7__ {int physical; int size; } ;
struct TYPE_6__ {scalar_t__ device_family; } ;
struct TYPE_5__ {int op; int val; int addr; } ;


 int BIT (int) ;



 scalar_t__ EXTERNAL_MODE ;
 int IWL_DEBUG_FW (struct iwl_trans*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_8000 ;
 int IWL_ERR (struct iwl_trans*,char*,int,...) ;
 int IWL_INFO (struct iwl_trans*,char*,int ) ;
 int IWL_WARN (struct iwl_trans*,char*) ;
 int MON_BUFF_BASE_ADDR_VER2 ;
 int MON_BUFF_END_ADDR_VER2 ;
 int MON_BUFF_SHIFT_VER2 ;




 int get_fw_dbg_mode_string (scalar_t__) ;
 int iwl_clear_bit (struct iwl_trans*,int,int) ;
 int iwl_clear_bits_prph (struct iwl_trans*,int,int) ;
 int iwl_pcie_alloc_fw_monitor (struct iwl_trans*,int ) ;
 int iwl_read_prph (struct iwl_trans*,int) ;
 int iwl_set_bit (struct iwl_trans*,int,int) ;
 int iwl_set_bits_prph (struct iwl_trans*,int,int) ;
 scalar_t__ iwl_trans_dbg_ini_valid (struct iwl_trans*) ;
 int iwl_write32 (struct iwl_trans*,int,int) ;
 int iwl_write_prph (struct iwl_trans*,int,int) ;
 int iwl_write_umac_prph (struct iwl_trans*,int ,int) ;
 int le32_to_cpu (int ) ;

void iwl_pcie_apply_destination(struct iwl_trans *trans)
{
 const struct iwl_fw_dbg_dest_tlv_v1 *dest = trans->dbg.dest_tlv;
 int i;

 if (iwl_trans_dbg_ini_valid(trans)) {
  if (!trans->dbg.num_blocks)
   return;

  IWL_DEBUG_FW(trans,
        "WRT: Applying DRAM buffer[0] destination\n");
  iwl_write_umac_prph(trans, MON_BUFF_BASE_ADDR_VER2,
        trans->dbg.fw_mon[0].physical >>
        MON_BUFF_SHIFT_VER2);
  iwl_write_umac_prph(trans, MON_BUFF_END_ADDR_VER2,
        (trans->dbg.fw_mon[0].physical +
         trans->dbg.fw_mon[0].size - 256) >>
        MON_BUFF_SHIFT_VER2);
  return;
 }

 IWL_INFO(trans, "Applying debug destination %s\n",
   get_fw_dbg_mode_string(dest->monitor_mode));

 if (dest->monitor_mode == EXTERNAL_MODE)
  iwl_pcie_alloc_fw_monitor(trans, dest->size_power);
 else
  IWL_WARN(trans, "PCI should have external buffer debug\n");

 for (i = 0; i < trans->dbg.n_dest_reg; i++) {
  u32 addr = le32_to_cpu(dest->reg_ops[i].addr);
  u32 val = le32_to_cpu(dest->reg_ops[i].val);

  switch (dest->reg_ops[i].op) {
  case 134:
   iwl_write32(trans, addr, val);
   break;
  case 132:
   iwl_set_bit(trans, addr, BIT(val));
   break;
  case 133:
   iwl_clear_bit(trans, addr, BIT(val));
   break;
  case 131:
   iwl_write_prph(trans, addr, val);
   break;
  case 128:
   iwl_set_bits_prph(trans, addr, BIT(val));
   break;
  case 129:
   iwl_clear_bits_prph(trans, addr, BIT(val));
   break;
  case 130:
   if (iwl_read_prph(trans, addr) & BIT(val)) {
    IWL_ERR(trans,
     "BIT(%u) in address 0x%x is 1, stopping FW configuration\n",
     val, addr);
    goto monitor;
   }
   break;
  default:
   IWL_ERR(trans, "FW debug - unknown OP %d\n",
    dest->reg_ops[i].op);
   break;
  }
 }

monitor:
 if (dest->monitor_mode == EXTERNAL_MODE && trans->dbg.fw_mon[0].size) {
  iwl_write_prph(trans, le32_to_cpu(dest->base_reg),
          trans->dbg.fw_mon[0].physical >>
          dest->base_shift);
  if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_8000)
   iwl_write_prph(trans, le32_to_cpu(dest->end_reg),
           (trans->dbg.fw_mon[0].physical +
     trans->dbg.fw_mon[0].size - 256) >>
      dest->end_shift);
  else
   iwl_write_prph(trans, le32_to_cpu(dest->end_reg),
           (trans->dbg.fw_mon[0].physical +
     trans->dbg.fw_mon[0].size) >>
      dest->end_shift);
 }
}
