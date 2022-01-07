
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {void* opaque_fid; void* srq_idx; } ;
struct rdma_srq_modify_ramrod_data {int wqe_limit; TYPE_4__ srq_id; } ;
struct TYPE_6__ {struct rdma_srq_modify_ramrod_data rdma_modify_srq; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; } ;
struct qed_rdma_modify_srq_in_params {int srq_id; int wqe_limit; } ;
struct TYPE_7__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_3__ hw_info; TYPE_1__* p_rdma_info; } ;
struct TYPE_5__ {int proto; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ) ;
 int QED_MSG_RDMA ;
 int QED_SPQ_MODE_EBLOCK ;
 int RDMA_RAMROD_MODIFY_SRQ ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_rdma_modify_srq(void *rdma_cxt,
          struct qed_rdma_modify_srq_in_params *in_params)
{
 struct rdma_srq_modify_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data = {};
 struct qed_hwfn *p_hwfn = rdma_cxt;
 struct qed_spq_entry *p_ent;
 u16 opaque_fid;
 int rc;

 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     RDMA_RAMROD_MODIFY_SRQ,
     p_hwfn->p_rdma_info->proto, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.rdma_modify_srq;
 p_ramrod->srq_id.srq_idx = cpu_to_le16(in_params->srq_id);
 opaque_fid = p_hwfn->hw_info.opaque_fid;
 p_ramrod->srq_id.opaque_fid = cpu_to_le16(opaque_fid);
 p_ramrod->wqe_limit = cpu_to_le32(in_params->wqe_limit);

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));
 if (rc)
  return rc;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "modified SRQ id = %x",
     in_params->srq_id);

 return rc;
}
