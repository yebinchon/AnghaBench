
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct qed_hwfn {int dummy; } ;


 int PQ_FLAGS_LLT ;
 scalar_t__ PQ_INIT_DEFAULT_TC ;
 scalar_t__ qed_get_cm_pq_idx (struct qed_hwfn*,int ) ;
 scalar_t__ qed_init_qm_get_num_mtc_tcs (struct qed_hwfn*) ;

u16 qed_get_cm_pq_idx_llt_mtc(struct qed_hwfn *p_hwfn, u8 tc)
{
 u16 first_llt_pq, pq_offset;

 first_llt_pq = qed_get_cm_pq_idx(p_hwfn, PQ_FLAGS_LLT);
 pq_offset = (tc < qed_init_qm_get_num_mtc_tcs(p_hwfn)) ?
      tc : PQ_INIT_DEFAULT_TC;

 return first_llt_pq + pq_offset;
}
