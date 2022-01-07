
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct qed_qm_info {size_t num_pqs; scalar_t__ start_vport; scalar_t__ num_vports; scalar_t__ num_pf_rls; TYPE_1__* qm_pq_params; } ;
struct qed_hwfn {int port_id; } ;
struct TYPE_2__ {scalar_t__ vport_id; int rl_valid; int wrr_group; int tc_id; int port_id; } ;


 int DP_ERR (struct qed_hwfn*,char*,size_t,scalar_t__) ;
 int PQ_INIT_DEFAULT_WRR_GROUP ;
 int PQ_INIT_PF_RL ;
 int PQ_INIT_SHARE_VPORT ;
 int PQ_INIT_VF_RL ;
 scalar_t__ qed_init_qm_get_num_pf_rls (struct qed_hwfn*) ;
 size_t qed_init_qm_get_num_pqs (struct qed_hwfn*) ;
 scalar_t__ qed_init_qm_get_num_vports (struct qed_hwfn*) ;

__attribute__((used)) static void qed_init_qm_pq(struct qed_hwfn *p_hwfn,
      struct qed_qm_info *qm_info,
      u8 tc, u32 pq_init_flags)
{
 u16 pq_idx = qm_info->num_pqs, max_pq = qed_init_qm_get_num_pqs(p_hwfn);

 if (pq_idx > max_pq)
  DP_ERR(p_hwfn,
         "pq overflow! pq %d, max pq %d\n", pq_idx, max_pq);


 qm_info->qm_pq_params[pq_idx].port_id = p_hwfn->port_id;
 qm_info->qm_pq_params[pq_idx].vport_id = qm_info->start_vport +
     qm_info->num_vports;
 qm_info->qm_pq_params[pq_idx].tc_id = tc;
 qm_info->qm_pq_params[pq_idx].wrr_group = PQ_INIT_DEFAULT_WRR_GROUP;
 qm_info->qm_pq_params[pq_idx].rl_valid =
     (pq_init_flags & PQ_INIT_PF_RL || pq_init_flags & PQ_INIT_VF_RL);


 qm_info->num_pqs++;
 if (!(pq_init_flags & PQ_INIT_SHARE_VPORT))
  qm_info->num_vports++;

 if (pq_init_flags & PQ_INIT_PF_RL)
  qm_info->num_pf_rls++;

 if (qm_info->num_vports > qed_init_qm_get_num_vports(p_hwfn))
  DP_ERR(p_hwfn,
         "vport overflow! qm_info->num_vports %d, qm_init_get_num_vports() %d\n",
         qm_info->num_vports, qed_init_qm_get_num_vports(p_hwfn));

 if (qm_info->num_pf_rls > qed_init_qm_get_num_pf_rls(p_hwfn))
  DP_ERR(p_hwfn,
         "rl overflow! qm_info->num_pf_rls %d, qm_init_get_num_pf_rls() %d\n",
         qm_info->num_pf_rls, qed_init_qm_get_num_pf_rls(p_hwfn));
}
