
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_drv_role { ____Placeholder_qed_drv_role } qed_drv_role ;


 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int DRV_ROLE_KDUMP ;
 int DRV_ROLE_OS ;
 int EINVAL ;



__attribute__((used)) static int eocre_get_mfw_drv_role(struct qed_hwfn *p_hwfn,
      enum qed_drv_role drv_role,
      u8 *p_mfw_drv_role)
{
 switch (drv_role) {
 case 128:
  *p_mfw_drv_role = DRV_ROLE_OS;
  break;
 case 129:
  *p_mfw_drv_role = DRV_ROLE_KDUMP;
  break;
 default:
  DP_ERR(p_hwfn, "Unexpected driver role %d\n", drv_role);
  return -EINVAL;
 }

 return 0;
}
