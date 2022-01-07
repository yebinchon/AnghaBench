
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vf {int dummy; } ;


 int ice_reset_vf (struct ice_vf*,int) ;
 int ice_vc_notify_vf_reset (struct ice_vf*) ;

__attribute__((used)) static void ice_vc_dis_vf(struct ice_vf *vf)
{
 ice_vc_notify_vf_reset(vf);
 ice_reset_vf(vf, 0);
}
