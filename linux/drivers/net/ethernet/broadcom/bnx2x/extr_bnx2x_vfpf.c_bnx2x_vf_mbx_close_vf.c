
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vf_mbx {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ) ;
 int bnx2x_vf_close (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_mbx_resp (struct bnx2x*,struct bnx2x_virtf*,int) ;

__attribute__((used)) static void bnx2x_vf_mbx_close_vf(struct bnx2x *bp, struct bnx2x_virtf *vf,
      struct bnx2x_vf_mbx *mbx)
{
 int rc;

 DP(BNX2X_MSG_IOV, "VF[%d] VF_CLOSE\n", vf->abs_vfid);

 rc = bnx2x_vf_close(bp, vf);
 bnx2x_vf_mbx_resp(bp, vf, rc);
}
