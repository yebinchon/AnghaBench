
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_veb {int idx; int enabled_tc; struct i40e_pf* pf; } ;
struct i40e_pf {int switch_mutex; struct i40e_veb** veb; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I40E_MAX_VEB ;
 struct i40e_veb* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i40e_veb_mem_alloc(struct i40e_pf *pf)
{
 int ret = -ENOENT;
 struct i40e_veb *veb;
 int i;


 mutex_lock(&pf->switch_mutex);







 i = 0;
 while ((i < I40E_MAX_VEB) && (pf->veb[i] != ((void*)0)))
  i++;
 if (i >= I40E_MAX_VEB) {
  ret = -ENOMEM;
  goto err_alloc_veb;
 }

 veb = kzalloc(sizeof(*veb), GFP_KERNEL);
 if (!veb) {
  ret = -ENOMEM;
  goto err_alloc_veb;
 }
 veb->pf = pf;
 veb->idx = i;
 veb->enabled_tc = 1;

 pf->veb[i] = veb;
 ret = i;
err_alloc_veb:
 mutex_unlock(&pf->switch_mutex);
 return ret;
}
