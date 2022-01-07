
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_vf_info {scalar_t__ state; } ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ VF_STOPPED ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static bool qed_iov_is_vf_stopped(struct qed_hwfn *p_hwfn, int vfid)
{
 struct qed_vf_info *p_vf_info;

 p_vf_info = qed_iov_get_vf_info(p_hwfn, (u16) vfid, 1);
 if (!p_vf_info)
  return 1;

 return p_vf_info->state == VF_STOPPED;
}
