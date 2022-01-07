
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct rdma_deregister_tid_ramrod_data {int itid; } ;
struct TYPE_5__ {struct rdma_deregister_tid_ramrod_data rdma_deregister_tid; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; } ;
struct qed_ptt {int dummy; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_3__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
struct TYPE_6__ {int proto; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int EBUSY ;
 int EINVAL ;
 int QED_MSG_RDMA ;
 int QED_SPQ_MODE_EBLOCK ;
 int RDMA_RAMROD_DEREGISTER_MR ;
 scalar_t__ RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR ;
 scalar_t__ RDMA_RETURN_NIG_DRAIN_REQ ;
 scalar_t__ RDMA_RETURN_OK ;
 int cpu_to_le32 (int) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_mcp_drain (struct qed_hwfn*,struct qed_ptt*) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,scalar_t__*) ;

__attribute__((used)) static int qed_rdma_deregister_tid(void *rdma_cxt, u32 itid)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
 struct rdma_deregister_tid_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 struct qed_ptt *p_ptt;
 u8 fw_return_code;
 int rc;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "itid = %08x\n", itid);


 memset(&init_data, 0, sizeof(init_data));
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent, RDMA_RAMROD_DEREGISTER_MR,
     p_hwfn->p_rdma_info->proto, &init_data);
 if (rc) {
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "rc = %d\n", rc);
  return rc;
 }

 p_ramrod = &p_ent->ramrod.rdma_deregister_tid;
 p_ramrod->itid = cpu_to_le32(itid);

 rc = qed_spq_post(p_hwfn, p_ent, &fw_return_code);
 if (rc) {
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "rc = %d\n", rc);
  return rc;
 }

 if (fw_return_code == RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR) {
  DP_NOTICE(p_hwfn, "fw_return_code = %d\n", fw_return_code);
  return -EINVAL;
 } else if (fw_return_code == RDMA_RETURN_NIG_DRAIN_REQ) {



  p_ptt = qed_ptt_acquire(p_hwfn);
  if (!p_ptt) {
   rc = -EBUSY;
   DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
       "Failed to acquire PTT\n");
   return rc;
  }

  rc = qed_mcp_drain(p_hwfn, p_ptt);
  if (rc) {
   qed_ptt_release(p_hwfn, p_ptt);
   DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
       "Drain failed\n");
   return rc;
  }

  qed_ptt_release(p_hwfn, p_ptt);


  rc = qed_sp_init_request(p_hwfn, &p_ent,
      RDMA_RAMROD_DEREGISTER_MR,
      p_hwfn->p_rdma_info->proto,
      &init_data);
  if (rc) {
   DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
       "Failed to init sp-element\n");
   return rc;
  }

  rc = qed_spq_post(p_hwfn, p_ent, &fw_return_code);
  if (rc) {
   DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
       "Ramrod failed\n");
   return rc;
  }

  if (fw_return_code != RDMA_RETURN_OK) {
   DP_NOTICE(p_hwfn, "fw_return_code = %d\n",
      fw_return_code);
   return rc;
  }
 }

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "De-registered TID, rc = %d\n", rc);
 return rc;
}
