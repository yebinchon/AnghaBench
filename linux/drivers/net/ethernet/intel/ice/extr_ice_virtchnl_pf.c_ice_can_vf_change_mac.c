
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vf {scalar_t__ pf_set_mac; } ;


 int ice_is_vf_trusted (struct ice_vf*) ;

__attribute__((used)) static bool ice_can_vf_change_mac(struct ice_vf *vf)
{




 if (vf->pf_set_mac && !ice_is_vf_trusted(vf))
  return 0;

 return 1;
}
