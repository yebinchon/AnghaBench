
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,int,int) ;
 int BNX2X_MSG_IOV ;
 int BNX2X_VF_FILTER_MAC ;
 int BNX2X_VF_FILTER_VLAN ;
 int BNX2X_VF_FILTER_VLAN_MAC ;
 int DP (int ,char*,int ,int) ;
 int LEADING_IDX ;
 scalar_t__ bnx2x_validate_vf_sp_objs (struct bnx2x*,struct bnx2x_virtf*,int) ;
 int bnx2x_vf_mcast (struct bnx2x*,struct bnx2x_virtf*,int *,int ,int) ;
 int bnx2x_vf_queue_destroy (struct bnx2x*,struct bnx2x_virtf*,int) ;
 int bnx2x_vf_rxmode (struct bnx2x*,struct bnx2x_virtf*,int,int ) ;
 int bnx2x_vf_vlan_mac_clear (struct bnx2x*,struct bnx2x_virtf*,int,int,int ) ;

int bnx2x_vf_queue_teardown(struct bnx2x *bp, struct bnx2x_virtf *vf, int qid)
{
 int rc;

 DP(BNX2X_MSG_IOV, "vf[%d:%d]\n", vf->abs_vfid, qid);


 if (qid == LEADING_IDX) {
  rc = bnx2x_vf_rxmode(bp, vf, qid, 0);
  if (rc)
   goto op_err;


  if (bnx2x_validate_vf_sp_objs(bp, vf, 1)) {
   rc = bnx2x_vf_vlan_mac_clear(bp, vf, qid,
           0,
           BNX2X_VF_FILTER_VLAN_MAC);
   if (rc)
    goto op_err;
   rc = bnx2x_vf_vlan_mac_clear(bp, vf, qid,
           0,
           BNX2X_VF_FILTER_VLAN);
   if (rc)
    goto op_err;
   rc = bnx2x_vf_vlan_mac_clear(bp, vf, qid,
           0,
           BNX2X_VF_FILTER_MAC);
   if (rc)
    goto op_err;
   rc = bnx2x_vf_mcast(bp, vf, ((void*)0), 0, 0);
   if (rc)
    goto op_err;
  }
 }


 rc = bnx2x_vf_queue_destroy(bp, vf, qid);
 if (rc)
  goto op_err;
 return rc;
op_err:
 BNX2X_ERR("vf[%d:%d] error: rc %d\n",
    vf->abs_vfid, qid, rc);
 return rc;
}
