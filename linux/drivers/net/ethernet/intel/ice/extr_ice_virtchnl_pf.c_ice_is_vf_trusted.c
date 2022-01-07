
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vf {int vf_caps; } ;


 int ICE_VIRTCHNL_VF_CAP_PRIVILEGE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool ice_is_vf_trusted(struct ice_vf *vf)
{
 return test_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
}
