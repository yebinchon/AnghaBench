
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_vf_info {int b_malicious; int abs_vf_id; } ;
struct qed_hwfn {int dummy; } ;
struct malicious_vf_eqe_data {int err_id; int vf_id; } ;


 int DP_INFO (struct qed_hwfn*,char*,int ,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int ,int ) ;
 struct qed_vf_info* qed_sriov_get_vf_from_absid (struct qed_hwfn*,int ) ;

__attribute__((used)) static void qed_sriov_vfpf_malicious(struct qed_hwfn *p_hwfn,
         struct malicious_vf_eqe_data *p_data)
{
 struct qed_vf_info *p_vf;

 p_vf = qed_sriov_get_vf_from_absid(p_hwfn, p_data->vf_id);

 if (!p_vf)
  return;

 if (!p_vf->b_malicious) {
  DP_NOTICE(p_hwfn,
     "VF [%d] - Malicious behavior [%02x]\n",
     p_vf->abs_vf_id, p_data->err_id);

  p_vf->b_malicious = 1;
 } else {
  DP_INFO(p_hwfn,
   "VF [%d] - Malicious behavior [%02x]\n",
   p_vf->abs_vf_id, p_data->err_id);
 }
}
