
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vf {int num_tc; TYPE_1__* ch; struct i40e_pf* pf; } ;
struct i40e_pf {int * vsi; } ;
struct TYPE_2__ {int vsi_idx; scalar_t__ vsi_id; } ;


 int i40e_vsi_release (int ) ;

__attribute__((used)) static void i40e_del_qch(struct i40e_vf *vf)
{
 struct i40e_pf *pf = vf->pf;
 int i;




 for (i = 1; i < vf->num_tc; i++) {
  if (vf->ch[i].vsi_idx) {
   i40e_vsi_release(pf->vsi[vf->ch[i].vsi_idx]);
   vf->ch[i].vsi_idx = 0;
   vf->ch[i].vsi_id = 0;
  }
 }
}
