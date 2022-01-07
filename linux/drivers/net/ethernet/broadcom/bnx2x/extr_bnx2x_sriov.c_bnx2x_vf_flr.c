
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int malicious; int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,int,int) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ) ;
 int bnx2x_vf_enable_mbx (struct bnx2x*,int ) ;
 int bnx2x_vf_flr_clnup_hw (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_free_resc (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vf_mcast (struct bnx2x*,struct bnx2x_virtf*,int *,int ,int) ;
 int bnx2x_vf_queue_flr (struct bnx2x*,struct bnx2x_virtf*,int) ;
 int vf_rxq_count (struct bnx2x_virtf*) ;

__attribute__((used)) static void bnx2x_vf_flr(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 int rc, i;

 DP(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);




 for (i = 0; i < vf_rxq_count(vf); i++) {
  rc = bnx2x_vf_queue_flr(bp, vf, i);
  if (rc)
   goto out;
 }


 bnx2x_vf_mcast(bp, vf, ((void*)0), 0, 1);


 bnx2x_vf_flr_clnup_hw(bp, vf);


 bnx2x_vf_free_resc(bp, vf);

 vf->malicious = 0;


 bnx2x_vf_enable_mbx(bp, vf->abs_vfid);
 return;
out:
 BNX2X_ERR("vf[%d:%d] failed flr: rc %d\n",
    vf->abs_vfid, i, rc);
}
