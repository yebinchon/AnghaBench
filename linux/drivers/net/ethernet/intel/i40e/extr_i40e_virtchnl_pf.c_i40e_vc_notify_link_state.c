
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int num_alloc_vfs; int * vf; } ;


 int i40e_vc_notify_vf_link_state (int *) ;

void i40e_vc_notify_link_state(struct i40e_pf *pf)
{
 int i;

 for (i = 0; i < pf->num_alloc_vfs; i++)
  i40e_vc_notify_vf_link_state(&pf->vf[i]);
}
