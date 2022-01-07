
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_rdma_start_in_params {int desired_cnq; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int active; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int EBUSY ;
 int QED_MSG_RDMA ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_rdma_alloc (struct qed_hwfn*) ;
 int qed_rdma_free (struct qed_hwfn*) ;
 int qed_rdma_setup (struct qed_hwfn*,struct qed_ptt*,struct qed_rdma_start_in_params*) ;

__attribute__((used)) static int qed_rdma_start(void *rdma_cxt,
     struct qed_rdma_start_in_params *params)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
 struct qed_ptt *p_ptt;
 int rc = -EBUSY;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
     "desired_cnq = %08x\n", params->desired_cnq);

 p_ptt = qed_ptt_acquire(p_hwfn);
 if (!p_ptt)
  goto err;

 rc = qed_rdma_alloc(p_hwfn);
 if (rc)
  goto err1;

 rc = qed_rdma_setup(p_hwfn, p_ptt, params);
 if (rc)
  goto err2;

 qed_ptt_release(p_hwfn, p_ptt);
 p_hwfn->p_rdma_info->active = 1;

 return rc;

err2:
 qed_rdma_free(p_hwfn);
err1:
 qed_ptt_release(p_hwfn, p_ptt);
err:
 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "RDMA start - error, rc = %d\n", rc);
 return rc;
}
