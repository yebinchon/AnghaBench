
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int state; int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,int) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,...) ;




 int bnx2x_vf_close (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_free_resc (struct bnx2x*,struct bnx2x_virtf*) ;

int bnx2x_vf_free(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 int rc;

 DP(BNX2X_MSG_IOV, "VF[%d] STATE: %s\n", vf->abs_vfid,
    vf->state == 129 ? "Free" :
    vf->state == 131 ? "Acquired" :
    vf->state == 130 ? "Enabled" :
    vf->state == 128 ? "Reset" :
    "Unknown");

 switch (vf->state) {
 case 130:
  rc = bnx2x_vf_close(bp, vf);
  if (rc)
   goto op_err;

 case 131:
  DP(BNX2X_MSG_IOV, "about to free resources\n");
  bnx2x_vf_free_resc(bp, vf);
  break;

 case 129:
 case 128:
 default:
  break;
 }
 return 0;
op_err:
 BNX2X_ERR("VF[%d] RELEASE error: rc %d\n", vf->abs_vfid, rc);
 return rc;
}
