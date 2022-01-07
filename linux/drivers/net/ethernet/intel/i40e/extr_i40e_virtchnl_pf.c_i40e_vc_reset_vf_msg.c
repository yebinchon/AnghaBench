
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vf {int vf_states; } ;


 int I40E_VF_STATE_ACTIVE ;
 int i40e_reset_vf (struct i40e_vf*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void i40e_vc_reset_vf_msg(struct i40e_vf *vf)
{
 if (test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states))
  i40e_reset_vf(vf, 0);
}
