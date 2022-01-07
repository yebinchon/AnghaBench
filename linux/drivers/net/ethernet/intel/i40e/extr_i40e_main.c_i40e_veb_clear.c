
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_veb {size_t idx; struct i40e_pf* pf; } ;
struct i40e_pf {int switch_mutex; struct i40e_veb** veb; } ;


 int kfree (struct i40e_veb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void i40e_veb_clear(struct i40e_veb *veb)
{
 if (!veb)
  return;

 if (veb->pf) {
  struct i40e_pf *pf = veb->pf;

  mutex_lock(&pf->switch_mutex);
  if (pf->veb[veb->idx] == veb)
   pf->veb[veb->idx] = ((void*)0);
  mutex_unlock(&pf->switch_mutex);
 }

 kfree(veb);
}
