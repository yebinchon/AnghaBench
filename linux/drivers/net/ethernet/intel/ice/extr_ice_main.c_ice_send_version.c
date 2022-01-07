
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_pf {int hw; } ;
struct ice_driver_ver {scalar_t__ driver_string; scalar_t__ subbuild_ver; int build_ver; int minor_ver; int major_ver; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int DRV_VERSION ;
 int DRV_VERSION_BUILD ;
 int DRV_VERSION_MAJOR ;
 int DRV_VERSION_MINOR ;
 int ice_aq_send_driver_ver (int *,struct ice_driver_ver*,int *) ;
 int strscpy (char*,int ,int) ;

__attribute__((used)) static enum ice_status ice_send_version(struct ice_pf *pf)
{
 struct ice_driver_ver dv;

 dv.major_ver = DRV_VERSION_MAJOR;
 dv.minor_ver = DRV_VERSION_MINOR;
 dv.build_ver = DRV_VERSION_BUILD;
 dv.subbuild_ver = 0;
 strscpy((char *)dv.driver_string, DRV_VERSION,
  sizeof(dv.driver_string));
 return ice_aq_send_driver_ver(&pf->hw, &dv, ((void*)0));
}
