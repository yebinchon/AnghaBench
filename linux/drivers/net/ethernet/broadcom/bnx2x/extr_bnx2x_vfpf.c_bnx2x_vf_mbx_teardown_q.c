
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vf_mbx {TYPE_3__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {int vf_qid; } ;
struct TYPE_5__ {TYPE_1__ q_op; } ;
struct TYPE_6__ {TYPE_2__ req; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ,int) ;
 int bnx2x_vf_mbx_resp (struct bnx2x*,struct bnx2x_virtf*,int) ;
 int bnx2x_vf_queue_teardown (struct bnx2x*,struct bnx2x_virtf*,int) ;

__attribute__((used)) static void bnx2x_vf_mbx_teardown_q(struct bnx2x *bp, struct bnx2x_virtf *vf,
        struct bnx2x_vf_mbx *mbx)
{
 int qid = mbx->msg->req.q_op.vf_qid;
 int rc;

 DP(BNX2X_MSG_IOV, "VF[%d] Q_TEARDOWN: vf_qid=%d\n",
    vf->abs_vfid, qid);

 rc = bnx2x_vf_queue_teardown(bp, vf, qid);
 bnx2x_vf_mbx_resp(bp, vf, rc);
}
