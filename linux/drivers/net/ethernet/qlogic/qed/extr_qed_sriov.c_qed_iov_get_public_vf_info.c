
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_public_vf_info {int dummy; } ;
struct qed_vf_info {struct qed_public_vf_info p_vf_info; } ;
struct qed_hwfn {int dummy; } ;


 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static struct
qed_public_vf_info *qed_iov_get_public_vf_info(struct qed_hwfn *p_hwfn,
            u16 relative_vf_id,
            bool b_enabled_only)
{
 struct qed_vf_info *vf = ((void*)0);

 vf = qed_iov_get_vf_info(p_hwfn, relative_vf_id, b_enabled_only);
 if (!vf)
  return ((void*)0);

 return &vf->p_vf_info;
}
