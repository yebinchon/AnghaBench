
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum qed_override_force_load { ____Placeholder_qed_override_force_load } qed_override_force_load ;


 int DRV_ROLE_KDUMP ;
 int DRV_ROLE_OS ;
 int DRV_ROLE_PREBOOT ;



__attribute__((used)) static bool
qed_mcp_can_force_load(u8 drv_role,
         u8 exist_drv_role,
         enum qed_override_force_load override_force_load)
{
 bool can_force_load = 0;

 switch (override_force_load) {
 case 129:
  can_force_load = 1;
  break;
 case 128:
  can_force_load = 0;
  break;
 default:
  can_force_load = (drv_role == DRV_ROLE_OS &&
      exist_drv_role == DRV_ROLE_PREBOOT) ||
     (drv_role == DRV_ROLE_KDUMP &&
      exist_drv_role == DRV_ROLE_OS);
  break;
 }

 return can_force_load;
}
