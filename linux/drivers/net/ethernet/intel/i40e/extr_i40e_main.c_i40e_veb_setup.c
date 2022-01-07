
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct i40e_veb {scalar_t__ seid; int enabled_tc; int idx; int veb_idx; scalar_t__ uplink_seid; scalar_t__ flags; } ;
struct i40e_pf {int num_alloc_vsi; scalar_t__ mac_seid; int lan_vsi; int lan_veb; TYPE_2__** vsi; struct i40e_veb** veb; TYPE_1__* pdev; } ;
struct TYPE_4__ {scalar_t__ seid; } ;
struct TYPE_3__ {int dev; } ;


 int I40E_MAX_VEB ;
 int I40E_NO_VEB ;
 int dev_info (int *,char*,scalar_t__,...) ;
 int i40e_add_veb (struct i40e_veb*,TYPE_2__*) ;
 int i40e_veb_clear (struct i40e_veb*) ;
 int i40e_veb_mem_alloc (struct i40e_pf*) ;

struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags,
    u16 uplink_seid, u16 vsi_seid,
    u8 enabled_tc)
{
 struct i40e_veb *veb, *uplink_veb = ((void*)0);
 int vsi_idx, veb_idx;
 int ret;


 if ((uplink_seid == 0 || vsi_seid == 0) &&
     (uplink_seid + vsi_seid != 0)) {
  dev_info(&pf->pdev->dev,
    "one, not both seid's are 0: uplink=%d vsi=%d\n",
    uplink_seid, vsi_seid);
  return ((void*)0);
 }


 for (vsi_idx = 0; vsi_idx < pf->num_alloc_vsi; vsi_idx++)
  if (pf->vsi[vsi_idx] && pf->vsi[vsi_idx]->seid == vsi_seid)
   break;
 if (vsi_idx == pf->num_alloc_vsi && vsi_seid != 0) {
  dev_info(&pf->pdev->dev, "vsi seid %d not found\n",
    vsi_seid);
  return ((void*)0);
 }

 if (uplink_seid && uplink_seid != pf->mac_seid) {
  for (veb_idx = 0; veb_idx < I40E_MAX_VEB; veb_idx++) {
   if (pf->veb[veb_idx] &&
       pf->veb[veb_idx]->seid == uplink_seid) {
    uplink_veb = pf->veb[veb_idx];
    break;
   }
  }
  if (!uplink_veb) {
   dev_info(&pf->pdev->dev,
     "uplink seid %d not found\n", uplink_seid);
   return ((void*)0);
  }
 }


 veb_idx = i40e_veb_mem_alloc(pf);
 if (veb_idx < 0)
  goto err_alloc;
 veb = pf->veb[veb_idx];
 veb->flags = flags;
 veb->uplink_seid = uplink_seid;
 veb->veb_idx = (uplink_veb ? uplink_veb->idx : I40E_NO_VEB);
 veb->enabled_tc = (enabled_tc ? enabled_tc : 0x1);


 ret = i40e_add_veb(veb, pf->vsi[vsi_idx]);
 if (ret)
  goto err_veb;
 if (vsi_idx == pf->lan_vsi)
  pf->lan_veb = veb->idx;

 return veb;

err_veb:
 i40e_veb_clear(veb);
err_alloc:
 return ((void*)0);
}
