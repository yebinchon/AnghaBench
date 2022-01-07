
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i40e_vsi {scalar_t__ id; } ;
struct i40e_pf {int num_alloc_vsi; struct i40e_vsi** vsi; } ;



struct i40e_vsi *i40e_find_vsi_from_id(struct i40e_pf *pf, u16 id)
{
 int i;

 for (i = 0; i < pf->num_alloc_vsi; i++)
  if (pf->vsi[i] && (pf->vsi[i]->id == id))
   return pf->vsi[i];

 return ((void*)0);
}
