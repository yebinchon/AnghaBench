
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct block_defs {int dbg_force_frame_addr; int dbg_force_valid_addr; int dbg_shift_addr; int dbg_enable_addr; int dbg_select_addr; } ;
typedef enum block_id { ____Placeholder_block_id } block_id ;


 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;
 struct block_defs** s_block_defs ;

__attribute__((used)) static void qed_config_dbg_line(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt,
    enum block_id block_id,
    u8 line_id,
    u8 enable_mask,
    u8 right_shift,
    u8 force_valid_mask, u8 force_frame_mask)
{
 struct block_defs *block = s_block_defs[block_id];

 qed_wr(p_hwfn, p_ptt, block->dbg_select_addr, line_id);
 qed_wr(p_hwfn, p_ptt, block->dbg_enable_addr, enable_mask);
 qed_wr(p_hwfn, p_ptt, block->dbg_shift_addr, right_shift);
 qed_wr(p_hwfn, p_ptt, block->dbg_force_valid_addr, force_valid_mask);
 qed_wr(p_hwfn, p_ptt, block->dbg_force_frame_addr, force_frame_mask);
}
