
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ multi_tc_roce_en; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;


 int DP_ERR (struct qed_hwfn*,char*) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 scalar_t__ QED_IS_ROCE_PERSONALITY (struct qed_hwfn*) ;
 int QED_PQ ;
 int QED_VPORT ;
 scalar_t__ RESC_NUM (struct qed_hwfn*,int ) ;
 scalar_t__ qed_init_qm_get_num_pqs (struct qed_hwfn*) ;
 scalar_t__ qed_init_qm_get_num_vports (struct qed_hwfn*) ;

__attribute__((used)) static int qed_init_qm_sanity(struct qed_hwfn *p_hwfn)
{
 if (qed_init_qm_get_num_vports(p_hwfn) > RESC_NUM(p_hwfn, QED_VPORT)) {
  DP_ERR(p_hwfn, "requested amount of vports exceeds resource\n");
  return -EINVAL;
 }

 if (qed_init_qm_get_num_pqs(p_hwfn) <= RESC_NUM(p_hwfn, QED_PQ))
  return 0;

 if (QED_IS_ROCE_PERSONALITY(p_hwfn)) {
  p_hwfn->hw_info.multi_tc_roce_en = 0;
  DP_NOTICE(p_hwfn,
     "multi-tc roce was disabled to reduce requested amount of pqs\n");
  if (qed_init_qm_get_num_pqs(p_hwfn) <= RESC_NUM(p_hwfn, QED_PQ))
   return 0;
 }

 DP_ERR(p_hwfn, "requested amount of pqs exceeds resource\n");
 return -EINVAL;
}
