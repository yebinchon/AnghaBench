
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vf {int vf_states; } ;


 int ICE_VF_STATE_ACTIVE ;
 int ice_reset_vf (struct ice_vf*,int) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void ice_vc_reset_vf_msg(struct ice_vf *vf)
{
 if (test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
  ice_reset_vf(vf, 0);
}
