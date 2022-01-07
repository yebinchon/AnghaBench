
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vf {int vf_states; } ;
struct i40e_pf {int num_alloc_vfs; struct i40e_vf* vf; } ;


 int I40E_VF_STATE_ACTIVE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool i40e_active_vfs(struct i40e_pf *pf)
{
 struct i40e_vf *vfs = pf->vf;
 int i;

 for (i = 0; i < pf->num_alloc_vfs; i++)
  if (test_bit(I40E_VF_STATE_ACTIVE, &vfs[i].vf_states))
   return 1;
 return 0;
}
