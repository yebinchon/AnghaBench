
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_DUMP_BUF_TOO_SMALL ;
 int DBG_STATUS_OK ;
 int qed_dbg_grc_set_params_default (struct qed_hwfn*) ;
 int qed_dbg_reg_fifo_get_dump_buf_size (struct qed_hwfn*,struct qed_ptt*,scalar_t__*) ;
 int qed_reg_fifo_dump (struct qed_hwfn*,struct qed_ptt*,scalar_t__*,int,scalar_t__*) ;
 int qed_update_blocks_reset_state (struct qed_hwfn*,struct qed_ptt*) ;

enum dbg_status qed_dbg_reg_fifo_dump(struct qed_hwfn *p_hwfn,
          struct qed_ptt *p_ptt,
          u32 *dump_buf,
          u32 buf_size_in_dwords,
          u32 *num_dumped_dwords)
{
 u32 needed_buf_size_in_dwords;
 enum dbg_status status;

 *num_dumped_dwords = 0;

 status = qed_dbg_reg_fifo_get_dump_buf_size(p_hwfn,
          p_ptt,
          &needed_buf_size_in_dwords);
 if (status != DBG_STATUS_OK)
  return status;

 if (buf_size_in_dwords < needed_buf_size_in_dwords)
  return DBG_STATUS_DUMP_BUF_TOO_SMALL;


 qed_update_blocks_reset_state(p_hwfn, p_ptt);

 status = qed_reg_fifo_dump(p_hwfn,
       p_ptt, dump_buf, 1, num_dumped_dwords);


 qed_dbg_grc_set_params_default(p_hwfn);

 return status;
}
