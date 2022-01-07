
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct regpair {int lo; scalar_t__ hi; } ;
struct TYPE_2__ {int pending_req; int b_pending_msg; } ;
struct qed_vf_info {TYPE_1__ vf_mbx; } ;
struct qed_hwfn {int dummy; } ;


 int QED_IOV_WQ_MSG_FLAG ;
 int qed_schedule_iov (struct qed_hwfn*,int ) ;
 struct qed_vf_info* qed_sriov_get_vf_from_absid (struct qed_hwfn*,int ) ;

__attribute__((used)) static int qed_sriov_vfpf_msg(struct qed_hwfn *p_hwfn,
         u16 abs_vfid, struct regpair *vf_msg)
{
 struct qed_vf_info *p_vf = qed_sriov_get_vf_from_absid(p_hwfn,
      abs_vfid);

 if (!p_vf)
  return 0;




 p_vf->vf_mbx.pending_req = (((u64)vf_msg->hi) << 32) | vf_msg->lo;


 p_vf->vf_mbx.b_pending_msg = 1;
 qed_schedule_iov(p_hwfn, QED_IOV_WQ_MSG_FLAG);

 return 0;
}
