
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dbg_tools_data {int * mode_enable; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct TYPE_2__ {int * ptr; } ;


 size_t BIN_BUF_DBG_MODE_TREE ;



 int MAX_INIT_MODE_OPS ;
 TYPE_1__* s_dbg_arrays ;

__attribute__((used)) static bool qed_is_mode_match(struct qed_hwfn *p_hwfn, u16 *modes_buf_offset)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 bool arg1, arg2;
 const u32 *ptr;
 u8 tree_val;


 ptr = s_dbg_arrays[BIN_BUF_DBG_MODE_TREE].ptr;
 tree_val = ((u8 *)ptr)[(*modes_buf_offset)++];

 switch (tree_val) {
 case 129:
  return !qed_is_mode_match(p_hwfn, modes_buf_offset);
 case 128:
 case 130:
  arg1 = qed_is_mode_match(p_hwfn, modes_buf_offset);
  arg2 = qed_is_mode_match(p_hwfn, modes_buf_offset);
  return (tree_val == 128) ? (arg1 ||
       arg2) : (arg1 && arg2);
 default:
  return dev_data->mode_enable[tree_val - MAX_INIT_MODE_OPS] > 0;
 }
}
