
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_vf_info {int req_spoofchk_val; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 int __qed_iov_spoofchk_set (struct qed_hwfn*,struct qed_vf_info*,int) ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;
 int qed_iov_pf_sanity_check (struct qed_hwfn*,int) ;
 int qed_iov_vf_has_vport_instance (struct qed_hwfn*,int) ;

__attribute__((used)) static int qed_iov_spoofchk_set(struct qed_hwfn *p_hwfn, int vfid, bool val)
{
 struct qed_vf_info *vf;
 int rc = -EINVAL;

 if (!qed_iov_pf_sanity_check(p_hwfn, vfid)) {
  DP_NOTICE(p_hwfn,
     "SR-IOV sanity check failed, can't set spoofchk\n");
  goto out;
 }

 vf = qed_iov_get_vf_info(p_hwfn, (u16) vfid, 1);
 if (!vf)
  goto out;

 if (!qed_iov_vf_has_vport_instance(p_hwfn, vfid)) {

  vf->req_spoofchk_val = val;
  rc = 0;
  goto out;
 }

 rc = __qed_iov_spoofchk_set(p_hwfn, vf, val);

out:
 return rc;
}
