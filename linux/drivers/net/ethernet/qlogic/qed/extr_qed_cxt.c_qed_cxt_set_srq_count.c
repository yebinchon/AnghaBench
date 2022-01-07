
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_cxt_mngr {int srq_count; } ;



__attribute__((used)) static void qed_cxt_set_srq_count(struct qed_hwfn *p_hwfn, u32 num_srqs)
{
 struct qed_cxt_mngr *p_mgr = p_hwfn->p_cxt_mngr;

 p_mgr->srq_count = num_srqs;
}
