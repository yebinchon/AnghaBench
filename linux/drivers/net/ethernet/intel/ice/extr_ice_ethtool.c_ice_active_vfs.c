
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vf {int vf_states; } ;
struct ice_pf {int num_alloc_vfs; struct ice_vf* vf; } ;


 int ICE_VF_STATE_ACTIVE ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static bool ice_active_vfs(struct ice_pf *pf)
{
 struct ice_vf *vf = pf->vf;
 int i;

 for (i = 0; i < pf->num_alloc_vfs; i++, vf++)
  if (test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
   return 1;
 return 0;
}
