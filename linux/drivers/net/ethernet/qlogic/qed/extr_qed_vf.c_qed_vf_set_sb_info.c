
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct qed_vf_iov {struct qed_sb_info** sbs_info; } ;
struct qed_sb_info {int dummy; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,...) ;
 size_t PFVF_MAX_SBS_PER_VF ;

void qed_vf_set_sb_info(struct qed_hwfn *p_hwfn,
   u16 sb_id, struct qed_sb_info *p_sb)
{
 struct qed_vf_iov *p_iov = p_hwfn->vf_iov_info;

 if (!p_iov) {
  DP_NOTICE(p_hwfn, "vf_sriov_info isn't initialized\n");
  return;
 }

 if (sb_id >= PFVF_MAX_SBS_PER_VF) {
  DP_NOTICE(p_hwfn, "Can't configure SB %04x\n", sb_id);
  return;
 }

 p_iov->sbs_info[sb_id] = p_sb;
}
