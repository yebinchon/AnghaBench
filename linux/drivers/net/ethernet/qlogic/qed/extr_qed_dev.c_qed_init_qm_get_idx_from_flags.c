
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_qm_info {int start_pq; int first_vf_pq; int first_llt_pq; int first_ofld_pq; int pure_ack_pq; int ooo_pq; int pure_lb_pq; int first_mcos_pq; int first_rl_pq; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;
typedef int pq_flags ;


 int BITS_PER_BYTE ;
 int DP_ERR (struct qed_hwfn*,char*,unsigned long) ;
 int bitmap_weight (unsigned long*,int) ;
 unsigned long qed_get_pq_flags (struct qed_hwfn*) ;

__attribute__((used)) static u16 *qed_init_qm_get_idx_from_flags(struct qed_hwfn *p_hwfn,
        unsigned long pq_flags)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;


 if (bitmap_weight(&pq_flags,
     sizeof(pq_flags) * BITS_PER_BYTE) > 1) {
  DP_ERR(p_hwfn, "requested multiple pq flags 0x%lx\n", pq_flags);
  goto err;
 }

 if (!(qed_get_pq_flags(p_hwfn) & pq_flags)) {
  DP_ERR(p_hwfn, "pq flag 0x%lx is not set\n", pq_flags);
  goto err;
 }

 switch (pq_flags) {
 case 129:
  return &qm_info->first_rl_pq;
 case 132:
  return &qm_info->first_mcos_pq;
 case 134:
  return &qm_info->pure_lb_pq;
 case 130:
  return &qm_info->ooo_pq;
 case 135:
  return &qm_info->pure_ack_pq;
 case 131:
  return &qm_info->first_ofld_pq;
 case 133:
  return &qm_info->first_llt_pq;
 case 128:
  return &qm_info->first_vf_pq;
 default:
  goto err;
 }

err:
 return &qm_info->start_pq;
}
