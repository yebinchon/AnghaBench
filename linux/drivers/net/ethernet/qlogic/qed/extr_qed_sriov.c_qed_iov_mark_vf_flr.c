
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long long u64 ;
typedef int u32 ;
typedef int u16 ;
struct qed_vf_info {int abs_vf_id; int relative_vf_id; int state; } ;
struct qed_hwfn {TYPE_3__* pf_iov_info; TYPE_2__* cdev; } ;
struct TYPE_6__ {unsigned long long* pending_flr; } ;
struct TYPE_5__ {TYPE_1__* p_iov_info; } ;
struct TYPE_4__ {int total_vfs; } ;


 int BIT (int) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int QED_MSG_IOV ;
 int VF_MAX_STATIC ;
 int VF_RESET ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int,int) ;

bool qed_iov_mark_vf_flr(struct qed_hwfn *p_hwfn, u32 *p_disabled_vfs)
{
 bool found = 0;
 u16 i;

 DP_VERBOSE(p_hwfn, QED_MSG_IOV, "Marking FLR-ed VFs\n");
 for (i = 0; i < (VF_MAX_STATIC / 32); i++)
  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "[%08x,...,%08x]: %08x\n",
      i * 32, (i + 1) * 32 - 1, p_disabled_vfs[i]);

 if (!p_hwfn->cdev->p_iov_info) {
  DP_NOTICE(p_hwfn, "VF flr but no IOV\n");
  return 0;
 }


 for (i = 0; i < p_hwfn->cdev->p_iov_info->total_vfs; i++) {
  struct qed_vf_info *p_vf;
  u8 vfid;

  p_vf = qed_iov_get_vf_info(p_hwfn, i, 0);
  if (!p_vf)
   continue;

  vfid = p_vf->abs_vf_id;
  if (BIT((vfid % 32)) & p_disabled_vfs[vfid / 32]) {
   u64 *p_flr = p_hwfn->pf_iov_info->pending_flr;
   u16 rel_vf_id = p_vf->relative_vf_id;

   DP_VERBOSE(p_hwfn, QED_MSG_IOV,
       "VF[%d] [rel %d] got FLR-ed\n",
       vfid, rel_vf_id);

   p_vf->state = VF_RESET;






   p_flr[rel_vf_id / 64] |= 1ULL << (rel_vf_id % 64);
   found = 1;
  }
 }

 return found;
}
