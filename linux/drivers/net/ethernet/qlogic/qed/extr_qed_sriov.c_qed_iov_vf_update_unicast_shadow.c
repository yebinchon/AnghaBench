
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_vf_info {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_ucast {scalar_t__ type; } ;


 scalar_t__ QED_FILTER_MAC ;
 scalar_t__ QED_FILTER_VLAN ;
 int qed_iov_vf_update_mac_shadow (struct qed_hwfn*,struct qed_vf_info*,struct qed_filter_ucast*) ;
 int qed_iov_vf_update_vlan_shadow (struct qed_hwfn*,struct qed_vf_info*,struct qed_filter_ucast*) ;

__attribute__((used)) static int
qed_iov_vf_update_unicast_shadow(struct qed_hwfn *p_hwfn,
     struct qed_vf_info *p_vf,
     struct qed_filter_ucast *p_params)
{
 int rc = 0;

 if (p_params->type == QED_FILTER_MAC) {
  rc = qed_iov_vf_update_mac_shadow(p_hwfn, p_vf, p_params);
  if (rc)
   return rc;
 }

 if (p_params->type == QED_FILTER_VLAN)
  rc = qed_iov_vf_update_vlan_shadow(p_hwfn, p_vf, p_params);

 return rc;
}
