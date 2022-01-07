
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vf_queue_construct_params {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,int,int) ;
 int BNX2X_MSG_IOV ;
 int BNX2X_SP_RTNL_HYPERVISOR_VLAN ;
 int DP (int ,char*,int ,int) ;
 int bnx2x_schedule_sp_rtnl (struct bnx2x*,int ,int ) ;
 int bnx2x_vf_queue_create (struct bnx2x*,struct bnx2x_virtf*,int,struct bnx2x_vf_queue_construct_params*) ;

int bnx2x_vf_queue_setup(struct bnx2x *bp, struct bnx2x_virtf *vf, int qid,
    struct bnx2x_vf_queue_construct_params *qctor)
{
 int rc;

 DP(BNX2X_MSG_IOV, "vf[%d:%d]\n", vf->abs_vfid, qid);

 rc = bnx2x_vf_queue_create(bp, vf, qid, qctor);
 if (rc)
  goto op_err;


 bnx2x_schedule_sp_rtnl(bp, BNX2X_SP_RTNL_HYPERVISOR_VLAN,
          BNX2X_MSG_IOV);
 return 0;
op_err:
 BNX2X_ERR("QSETUP[%d:%d] error: rc %d\n", vf->abs_vfid, qid, rc);
 return rc;
}
