
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {size_t veb_idx; struct i40e_pf* back; } ;
struct i40e_veb {int bridge_mode; } ;
struct i40e_pf {TYPE_1__* pdev; struct i40e_veb** veb; } ;
struct TYPE_2__ {int dev; } ;


 int BRIDGE_MODE_VEPA ;
 int ENOENT ;
 size_t I40E_MAX_VEB ;
 int dev_info (int *,char*) ;

int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi)
{
 struct i40e_veb *veb;
 struct i40e_pf *pf = vsi->back;


 if (vsi->veb_idx >= I40E_MAX_VEB)
  return 1;

 veb = pf->veb[vsi->veb_idx];
 if (!veb) {
  dev_info(&pf->pdev->dev,
    "There is no veb associated with the bridge\n");
  return -ENOENT;
 }


 if (veb->bridge_mode & BRIDGE_MODE_VEPA) {
  return 0;
 } else {

  return 1;
 }


 return 0;
}
