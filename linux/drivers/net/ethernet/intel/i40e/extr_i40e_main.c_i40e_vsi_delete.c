
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {int seid; TYPE_1__* back; } ;
struct TYPE_2__ {size_t lan_vsi; int hw; struct i40e_vsi** vsi; } ;


 int i40e_aq_delete_element (int *,int ,int *) ;

__attribute__((used)) static void i40e_vsi_delete(struct i40e_vsi *vsi)
{

 if (vsi == vsi->back->vsi[vsi->back->lan_vsi])
  return;

 i40e_aq_delete_element(&vsi->back->hw, vsi->seid, ((void*)0));
}
