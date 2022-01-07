
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i40e_veb {scalar_t__ seid; scalar_t__ idx; scalar_t__ uplink_seid; struct i40e_pf* pf; } ;
struct i40e_pf {int num_alloc_vsi; struct i40e_veb** veb; TYPE_1__** vsi; } ;
struct TYPE_2__ {scalar_t__ uplink_seid; int flags; } ;


 int I40E_MAX_VEB ;
 int I40E_VSI_FLAG_VEB_OWNER ;
 int i40e_veb_release (struct i40e_veb*) ;
 int i40e_vsi_release (TYPE_1__*) ;

__attribute__((used)) static void i40e_switch_branch_release(struct i40e_veb *branch)
{
 struct i40e_pf *pf = branch->pf;
 u16 branch_seid = branch->seid;
 u16 veb_idx = branch->idx;
 int i;


 for (i = 0; i < I40E_MAX_VEB; i++) {
  if (!pf->veb[i])
   continue;
  if (pf->veb[i]->uplink_seid == branch->seid)
   i40e_switch_branch_release(pf->veb[i]);
 }






 for (i = 0; i < pf->num_alloc_vsi; i++) {
  if (!pf->vsi[i])
   continue;
  if (pf->vsi[i]->uplink_seid == branch_seid &&
     (pf->vsi[i]->flags & I40E_VSI_FLAG_VEB_OWNER) == 0) {
   i40e_vsi_release(pf->vsi[i]);
  }
 }






 if (pf->veb[veb_idx])
  i40e_veb_release(pf->veb[veb_idx]);
}
