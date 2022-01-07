
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {scalar_t__ uplink_seid; int veb_idx; int flags; } ;
struct i40e_veb {scalar_t__ seid; scalar_t__ uplink_seid; int veb_idx; struct i40e_pf* pf; } ;
struct i40e_pf {int num_alloc_vsi; scalar_t__ mac_seid; size_t lan_vsi; int hw; struct i40e_vsi** vsi; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int I40E_NO_VEB ;
 int I40E_VSI_FLAG_VEB_OWNER ;
 int dev_info (int *,char*,scalar_t__,int) ;
 int i40e_aq_delete_element (int *,scalar_t__,int *) ;
 int i40e_veb_clear (struct i40e_veb*) ;

void i40e_veb_release(struct i40e_veb *veb)
{
 struct i40e_vsi *vsi = ((void*)0);
 struct i40e_pf *pf;
 int i, n = 0;

 pf = veb->pf;


 for (i = 0; i < pf->num_alloc_vsi; i++) {
  if (pf->vsi[i] && pf->vsi[i]->uplink_seid == veb->seid) {
   n++;
   vsi = pf->vsi[i];
  }
 }
 if (n != 1) {
  dev_info(&pf->pdev->dev,
    "can't remove VEB %d with %d VSIs left\n",
    veb->seid, n);
  return;
 }


 vsi->flags &= ~I40E_VSI_FLAG_VEB_OWNER;
 if (veb->uplink_seid) {
  vsi->uplink_seid = veb->uplink_seid;
  if (veb->uplink_seid == pf->mac_seid)
   vsi->veb_idx = I40E_NO_VEB;
  else
   vsi->veb_idx = veb->veb_idx;
 } else {

  vsi->uplink_seid = pf->vsi[pf->lan_vsi]->uplink_seid;
  vsi->veb_idx = pf->vsi[pf->lan_vsi]->veb_idx;
 }

 i40e_aq_delete_element(&pf->hw, veb->seid, ((void*)0));
 i40e_veb_clear(veb);
}
