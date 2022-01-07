
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qed_vf_info {int num_sbs; scalar_t__* igu_sbs; int abs_vf_id; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,scalar_t__,int) ;
 int QED_MSG_IOV ;

__attribute__((used)) static bool qed_iov_validate_sb(struct qed_hwfn *p_hwfn,
    struct qed_vf_info *p_vf, u16 sb_idx)
{
 int i;

 for (i = 0; i < p_vf->num_sbs; i++)
  if (p_vf->igu_sbs[i] == sb_idx)
   return 1;

 DP_VERBOSE(p_hwfn,
     QED_MSG_IOV,
     "VF[0%02x] - tried using sb_idx %04x which doesn't exist as one of its 0x%02x SBs\n",
     p_vf->abs_vf_id, sb_idx, p_vf->num_sbs);

 return 0;
}
