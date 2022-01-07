
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int abs_pf_id; void* num_funcs_on_engine; void* enabled_func_idx; void* rel_pf_id; struct qed_dev* cdev; } ;
struct qed_dev {int num_hwfns; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,void*,int,void*,void*) ;
 void* MAX_NUM_PFS_BB ;
 void* MAX_NUM_PFS_K2 ;
 int MISCS_REG_FUNCTION_HIDE ;
 int NETIF_MSG_PROBE ;
 scalar_t__ QED_IS_AH (struct qed_dev*) ;
 scalar_t__ QED_IS_BB (struct qed_dev*) ;
 scalar_t__ QED_PATH_ID (struct qed_hwfn*) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static void qed_get_num_funcs(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u8 num_funcs, enabled_func_idx = p_hwfn->rel_pf_id;
 u32 reg_function_hide, tmp, eng_mask, low_pfs_mask;
 struct qed_dev *cdev = p_hwfn->cdev;

 num_funcs = QED_IS_AH(cdev) ? MAX_NUM_PFS_K2 : MAX_NUM_PFS_BB;
 reg_function_hide = qed_rd(p_hwfn, p_ptt, MISCS_REG_FUNCTION_HIDE);

 if (reg_function_hide & 0x1) {
  if (QED_IS_BB(cdev)) {
   if (QED_PATH_ID(p_hwfn) && cdev->num_hwfns == 1) {
    num_funcs = 0;
    eng_mask = 0xaaaa;
   } else {
    num_funcs = 1;
    eng_mask = 0x5554;
   }
  } else {
   num_funcs = 1;
   eng_mask = 0xfffe;
  }


  tmp = (reg_function_hide ^ 0xffffffff) & eng_mask;
  while (tmp) {
   if (tmp & 0x1)
    num_funcs++;
   tmp >>= 0x1;
  }


  low_pfs_mask = (0x1 << p_hwfn->abs_pf_id) - 1;
  tmp = reg_function_hide & eng_mask & low_pfs_mask;
  while (tmp) {
   if (tmp & 0x1)
    enabled_func_idx--;
   tmp >>= 0x1;
  }
 }

 p_hwfn->num_funcs_on_engine = num_funcs;
 p_hwfn->enabled_func_idx = enabled_func_idx;

 DP_VERBOSE(p_hwfn,
     NETIF_MSG_PROBE,
     "PF [rel_id %d, abs_id %d] occupies index %d within the %d enabled functions on the engine\n",
     p_hwfn->rel_pf_id,
     p_hwfn->abs_pf_id,
     p_hwfn->enabled_func_idx, p_hwfn->num_funcs_on_engine);
}
