
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct qed_qm_pf_rt_init_params {size_t num_vports; int link_speed; int start_vport; int pf_rl; int pf_id; scalar_t__ pf_wfq; scalar_t__ num_tids; scalar_t__ num_pf_cids; int is_pf_loading; struct init_qm_vport_params* vport_params; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct init_qm_vport_params {int * first_tx_pq_id; } ;


 size_t NUM_OF_TCS ;
 int QM_INVALID_PQ_ID ;
 int QM_OTHER_PQS_PER_PF ;
 int QM_PQ_MEM_4KB (scalar_t__) ;
 int qed_other_pq_map_rt_init (struct qed_hwfn*,int ,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ qed_pf_rl_rt_init (struct qed_hwfn*,int ,int ) ;
 scalar_t__ qed_pf_wfq_rt_init (struct qed_hwfn*,struct qed_qm_pf_rt_init_params*) ;
 int qed_tx_pq_map_rt_init (struct qed_hwfn*,struct qed_ptt*,struct qed_qm_pf_rt_init_params*,int) ;
 scalar_t__ qed_vp_wfq_rt_init (struct qed_hwfn*,size_t,struct init_qm_vport_params*) ;
 scalar_t__ qed_vport_rl_rt_init (struct qed_hwfn*,int ,size_t,int ,struct init_qm_vport_params*) ;

int qed_qm_pf_rt_init(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt,
        struct qed_qm_pf_rt_init_params *p_params)
{
 struct init_qm_vport_params *vport_params = p_params->vport_params;
 u32 other_mem_size_4kb = QM_PQ_MEM_4KB(p_params->num_pf_cids +
            p_params->num_tids) *
     QM_OTHER_PQS_PER_PF;
 u8 tc, i;


 for (i = 0; i < p_params->num_vports; i++)
  for (tc = 0; tc < NUM_OF_TCS; tc++)
   vport_params[i].first_tx_pq_id[tc] = QM_INVALID_PQ_ID;


 qed_other_pq_map_rt_init(p_hwfn,
     p_params->pf_id,
     p_params->is_pf_loading, p_params->num_pf_cids,
     p_params->num_tids, 0);


 qed_tx_pq_map_rt_init(p_hwfn, p_ptt, p_params, other_mem_size_4kb);


 if (p_params->pf_wfq)
  if (qed_pf_wfq_rt_init(p_hwfn, p_params))
   return -1;


 if (qed_pf_rl_rt_init(p_hwfn, p_params->pf_id, p_params->pf_rl))
  return -1;


 if (qed_vp_wfq_rt_init(p_hwfn, p_params->num_vports, vport_params))
  return -1;


 if (qed_vport_rl_rt_init(p_hwfn, p_params->start_vport,
     p_params->num_vports, p_params->link_speed,
     vport_params))
  return -1;

 return 0;
}
