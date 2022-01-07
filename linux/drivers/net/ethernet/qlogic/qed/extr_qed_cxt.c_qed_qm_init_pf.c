
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_qm_pf_rt_init_params {int is_pf_loading; int vport_params; int pq_params; int link_speed; int pf_rl; int pf_wfq; int num_vports; int start_vport; scalar_t__ num_vf_pqs; scalar_t__ num_pf_pqs; int start_pq; int tids; int num_tids; int vf_cids; int num_vf_cids; int cids; int num_pf_cids; int max_phys_tcs_per_port; int pf_id; int port_id; } ;
struct qed_qm_info {int qm_vport_params; int qm_pq_params; int pf_rl; int pf_wfq; int num_vports; int start_vport; scalar_t__ num_vf_pqs; scalar_t__ num_pqs; int start_pq; int max_phys_tcs_per_port; } ;
struct qed_qm_iids {int is_pf_loading; int vport_params; int pq_params; int link_speed; int pf_rl; int pf_wfq; int num_vports; int start_vport; scalar_t__ num_vf_pqs; scalar_t__ num_pf_pqs; int start_pq; int tids; int num_tids; int vf_cids; int num_vf_cids; int cids; int num_pf_cids; int max_phys_tcs_per_port; int pf_id; int port_id; } ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_link_state {int speed; } ;
struct qed_hwfn {int rel_pf_id; int port_id; int cdev; struct qed_qm_info qm_info; } ;
typedef int params ;
typedef int iids ;
struct TYPE_4__ {TYPE_1__* mcp_info; } ;
struct TYPE_3__ {struct qed_mcp_link_state link_output; } ;


 TYPE_2__* QED_LEADING_HWFN (int ) ;
 int memset (struct qed_qm_pf_rt_init_params*,int ,int) ;
 int qed_cxt_qm_iids (struct qed_hwfn*,struct qed_qm_pf_rt_init_params*) ;
 int qed_qm_pf_rt_init (struct qed_hwfn*,struct qed_ptt*,struct qed_qm_pf_rt_init_params*) ;

void qed_qm_init_pf(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt, bool is_pf_loading)
{
 struct qed_qm_info *qm_info = &p_hwfn->qm_info;
 struct qed_qm_pf_rt_init_params params;
 struct qed_mcp_link_state *p_link;
 struct qed_qm_iids iids;

 memset(&iids, 0, sizeof(iids));
 qed_cxt_qm_iids(p_hwfn, &iids);

 p_link = &QED_LEADING_HWFN(p_hwfn->cdev)->mcp_info->link_output;

 memset(&params, 0, sizeof(params));
 params.port_id = p_hwfn->port_id;
 params.pf_id = p_hwfn->rel_pf_id;
 params.max_phys_tcs_per_port = qm_info->max_phys_tcs_per_port;
 params.is_pf_loading = is_pf_loading;
 params.num_pf_cids = iids.cids;
 params.num_vf_cids = iids.vf_cids;
 params.num_tids = iids.tids;
 params.start_pq = qm_info->start_pq;
 params.num_pf_pqs = qm_info->num_pqs - qm_info->num_vf_pqs;
 params.num_vf_pqs = qm_info->num_vf_pqs;
 params.start_vport = qm_info->start_vport;
 params.num_vports = qm_info->num_vports;
 params.pf_wfq = qm_info->pf_wfq;
 params.pf_rl = qm_info->pf_rl;
 params.link_speed = p_link->speed;
 params.pq_params = qm_info->qm_pq_params;
 params.vport_params = qm_info->qm_vport_params;

 qed_qm_pf_rt_init(p_hwfn, p_ptt, &params);
}
