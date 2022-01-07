
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int hw; } ;
struct i40e_driver_version {int driver_string; scalar_t__ subbuild_version; int build_version; int minor_version; int major_version; } ;


 int DRV_VERSION ;
 int DRV_VERSION_BUILD ;
 int DRV_VERSION_MAJOR ;
 int DRV_VERSION_MINOR ;
 int i40e_aq_send_driver_version (int *,struct i40e_driver_version*,int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void i40e_send_version(struct i40e_pf *pf)
{
 struct i40e_driver_version dv;

 dv.major_version = DRV_VERSION_MAJOR;
 dv.minor_version = DRV_VERSION_MINOR;
 dv.build_version = DRV_VERSION_BUILD;
 dv.subbuild_version = 0;
 strlcpy(dv.driver_string, DRV_VERSION, sizeof(dv.driver_string));
 i40e_aq_send_driver_version(&pf->hw, &dv, ((void*)0));
}
