
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct qed_ptt {int dummy; } ;
struct dbg_tools_data {scalar_t__* block_in_reset; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct TYPE_2__ {int data; } ;
struct dbg_attn_reg {int sts_clr_address; TYPE_1__ mode; } ;
typedef enum block_id { ____Placeholder_block_id } block_id ;


 int ATTN_TYPE_PARITY ;
 int DBG_MODE_HDR_EVAL_MODE ;
 int DBG_MODE_HDR_MODES_BUF_OFFSET ;
 int DWORDS_TO_BYTES (int ) ;
 scalar_t__ GET_FIELD (int ,int ) ;
 size_t MAX_BLOCK_ID ;
 struct dbg_attn_reg* qed_get_block_attn_regs (int,int ,size_t*) ;
 scalar_t__ qed_is_mode_match (struct qed_hwfn*,scalar_t__*) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static void qed_grc_clear_all_prty(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 const struct dbg_attn_reg *attn_reg_arr;
 u8 reg_idx, num_attn_regs;
 u32 block_id;

 for (block_id = 0; block_id < MAX_BLOCK_ID; block_id++) {
  if (dev_data->block_in_reset[block_id])
   continue;

  attn_reg_arr = qed_get_block_attn_regs((enum block_id)block_id,
             ATTN_TYPE_PARITY,
             &num_attn_regs);

  for (reg_idx = 0; reg_idx < num_attn_regs; reg_idx++) {
   const struct dbg_attn_reg *reg_data =
    &attn_reg_arr[reg_idx];
   u16 modes_buf_offset;
   bool eval_mode;


   eval_mode = GET_FIELD(reg_data->mode.data,
           DBG_MODE_HDR_EVAL_MODE) > 0;
   modes_buf_offset =
    GET_FIELD(reg_data->mode.data,
       DBG_MODE_HDR_MODES_BUF_OFFSET);


   if (!eval_mode ||
       qed_is_mode_match(p_hwfn, &modes_buf_offset))
    qed_rd(p_hwfn, p_ptt,
           DWORDS_TO_BYTES(reg_data->
             sts_clr_address));
  }
 }
}
