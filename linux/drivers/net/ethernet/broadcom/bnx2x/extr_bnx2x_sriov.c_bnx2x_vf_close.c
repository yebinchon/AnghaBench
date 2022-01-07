
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_vf_state_cookie {int state; struct bnx2x_virtf* vf; } ;
struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,int) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,...) ;
 int VF_ACQUIRED ;
 int bnx2x_set_vf_state ;
 int bnx2x_stats_safe_exec (struct bnx2x*,int ,struct set_vf_state_cookie*) ;
 int bnx2x_vf_clr_qtbl (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_igu_disable (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_queue_teardown (struct bnx2x*,struct bnx2x_virtf*,int) ;
 int vf_rxq_count (struct bnx2x_virtf*) ;

int bnx2x_vf_close(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 int rc = 0, i;

 DP(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);


 for (i = 0; i < vf_rxq_count(vf); i++) {
  rc = bnx2x_vf_queue_teardown(bp, vf, i);
  if (rc)
   goto op_err;
 }


 DP(BNX2X_MSG_IOV, "disabling igu\n");
 bnx2x_vf_igu_disable(bp, vf);


 DP(BNX2X_MSG_IOV, "clearing qtbl\n");
 bnx2x_vf_clr_qtbl(bp, vf);





 {
  struct set_vf_state_cookie cookie;

  cookie.vf = vf;
  cookie.state = VF_ACQUIRED;
  rc = bnx2x_stats_safe_exec(bp, bnx2x_set_vf_state, &cookie);
  if (rc)
   goto op_err;
 }

 DP(BNX2X_MSG_IOV, "set state to acquired\n");

 return 0;
op_err:
 BNX2X_ERR("vf[%d] CLOSE error: rc %d\n", vf->abs_vfid, rc);
 return rc;
}
