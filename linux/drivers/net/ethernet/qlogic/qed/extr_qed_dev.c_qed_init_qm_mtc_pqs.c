
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qed_qm_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ offload_tc; } ;
struct qed_hwfn {TYPE_1__ hw_info; struct qed_qm_info qm_info; } ;


 int PQ_INIT_SHARE_VPORT ;
 scalar_t__ qed_init_qm_get_num_mtc_tcs (struct qed_hwfn*) ;
 int qed_init_qm_pq (struct qed_hwfn*,struct qed_qm_info*,scalar_t__,int ) ;
 scalar_t__ qed_is_offload_tc_set (struct qed_hwfn*) ;

__attribute__((used)) static void qed_init_qm_mtc_pqs(struct qed_hwfn *p_hwfn)
{
 u8 num_tcs = qed_init_qm_get_num_mtc_tcs(p_hwfn);
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;
 u8 tc;


 for (tc = 0; tc < num_tcs; tc++)
  qed_init_qm_pq(p_hwfn, qm_info,
          qed_is_offload_tc_set(p_hwfn) ?
          p_hwfn->hw_info.offload_tc : tc,
          PQ_INIT_SHARE_VPORT);
}
