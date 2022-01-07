
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_cxt_mngr {int srq_count; } ;



u32 qed_cxt_get_srq_count(struct qed_hwfn *p_hwfn)
{
 struct qed_cxt_mngr *p_mgr = p_hwfn->p_cxt_mngr;

 return p_mgr->srq_count;
}
