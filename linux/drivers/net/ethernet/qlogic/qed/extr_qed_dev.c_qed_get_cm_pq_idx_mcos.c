
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ start_pq; } ;
struct qed_hwfn {TYPE_1__ qm_info; } ;


 int DP_ERR (struct qed_hwfn*,char*,int,...) ;
 int PQ_FLAGS_MCOS ;
 scalar_t__ qed_get_cm_pq_idx (struct qed_hwfn*,int ) ;
 int qed_init_qm_get_num_tcs (struct qed_hwfn*) ;

u16 qed_get_cm_pq_idx_mcos(struct qed_hwfn *p_hwfn, u8 tc)
{
 u8 max_tc = qed_init_qm_get_num_tcs(p_hwfn);

 if (max_tc == 0) {
  DP_ERR(p_hwfn, "pq with flag 0x%lx do not exist\n",
         PQ_FLAGS_MCOS);
  return p_hwfn->qm_info.start_pq;
 }

 if (tc > max_tc)
  DP_ERR(p_hwfn, "tc %d must be smaller than %d\n", tc, max_tc);

 return qed_get_cm_pq_idx(p_hwfn, PQ_FLAGS_MCOS) + (tc % max_tc);
}
