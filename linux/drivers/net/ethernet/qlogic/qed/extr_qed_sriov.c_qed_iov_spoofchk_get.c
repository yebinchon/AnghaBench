
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_vf_info {int spoof_chk; } ;
struct qed_hwfn {int dummy; } ;


 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static bool qed_iov_spoofchk_get(struct qed_hwfn *p_hwfn, int vfid)
{
 struct qed_vf_info *vf_info;

 vf_info = qed_iov_get_vf_info(p_hwfn, (u16) vfid, 1);
 if (!vf_info)
  return 0;

 return vf_info->spoof_chk;
}
