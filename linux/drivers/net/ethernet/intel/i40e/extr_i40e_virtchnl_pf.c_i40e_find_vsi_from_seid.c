
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i40e_vsi {scalar_t__ seid; } ;
struct i40e_vf {int num_tc; TYPE_1__* ch; struct i40e_pf* pf; } ;
struct i40e_pf {int dummy; } ;
struct TYPE_2__ {int vsi_id; } ;


 struct i40e_vsi* i40e_find_vsi_from_id (struct i40e_pf*,int ) ;

__attribute__((used)) static struct i40e_vsi *i40e_find_vsi_from_seid(struct i40e_vf *vf, u16 seid)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_vsi *vsi = ((void*)0);
 int i;

 for (i = 0; i < vf->num_tc ; i++) {
  vsi = i40e_find_vsi_from_id(pf, vf->ch[i].vsi_id);
  if (vsi && vsi->seid == seid)
   return vsi;
 }
 return ((void*)0);
}
