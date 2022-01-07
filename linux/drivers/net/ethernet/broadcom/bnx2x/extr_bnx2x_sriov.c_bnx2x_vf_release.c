
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int CHANNEL_TLV_PF_RELEASE_VF ;
 int DP (int ,char*,int ) ;
 int WARN (int,char*,int ,int) ;
 int bnx2x_lock_vf_pf_channel (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_unlock_vf_pf_channel (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_vf_free (struct bnx2x*,struct bnx2x_virtf*) ;

int bnx2x_vf_release(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 int rc;

 DP(BNX2X_MSG_IOV, "PF releasing vf %d\n", vf->abs_vfid);
 bnx2x_lock_vf_pf_channel(bp, vf, CHANNEL_TLV_PF_RELEASE_VF);

 rc = bnx2x_vf_free(bp, vf);
 if (rc)
  WARN(rc,
       "VF[%d] Failed to allocate resources for release op- rc=%d\n",
       vf->abs_vfid, rc);
 bnx2x_unlock_vf_pf_channel(bp, vf, CHANNEL_TLV_PF_RELEASE_VF);
 return rc;
}
