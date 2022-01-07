
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_resc_unlock_params {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {scalar_t__ abs_pf_id; TYPE_1__* cdev; } ;
typedef enum qed_resc_lock { ____Placeholder_qed_resc_lock } qed_resc_lock ;
struct TYPE_2__ {scalar_t__ num_ports_in_engine; } ;


 int DP_INFO (struct qed_hwfn*,char*) ;
 int EINVAL ;
 int QED_RESC_LOCK_RESC_INVALID ;
 int qed_mcp_resc_lock_default_init (int *,struct qed_resc_unlock_params*,int,int) ;
 int qed_mcp_resc_unlock (struct qed_hwfn*,struct qed_ptt*,struct qed_resc_unlock_params*) ;
 int qed_ptcdev_to_resc (struct qed_hwfn*) ;

__attribute__((used)) static int qed_ptp_res_unlock(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct qed_resc_unlock_params params;
 enum qed_resc_lock resource;
 int rc;

 resource = qed_ptcdev_to_resc(p_hwfn);
 if (resource == QED_RESC_LOCK_RESC_INVALID)
  return -EINVAL;

 qed_mcp_resc_lock_default_init(((void*)0), &params, resource, 1);

 rc = qed_mcp_resc_unlock(p_hwfn, p_ptt, &params);
 if (rc == -EINVAL) {

  if (p_hwfn->abs_pf_id < p_hwfn->cdev->num_ports_in_engine) {
   rc = 0;
  } else {
   DP_INFO(p_hwfn, "PF doesn't have lock ownership\n");
   return -EINVAL;
  }
 } else if (rc) {
  DP_INFO(p_hwfn, "Failed to release the ptp resource lock\n");
 }

 return rc;
}
