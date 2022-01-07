
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {size_t idx; int af_xdp_zc_qps; int base_vector; int base_queue; int type; struct i40e_pf* back; } ;
struct i40e_pf {size_t next_vsi; int switch_mutex; struct i40e_vsi** vsi; int irq_pile; int qp_pile; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int bitmap_free (int ) ;
 int dev_err (int *,char*,size_t,size_t,size_t,...) ;
 int i40e_clear_rss_config_user (struct i40e_vsi*) ;
 int i40e_put_lump (int ,int ,size_t) ;
 int i40e_vsi_free_arrays (struct i40e_vsi*,int) ;
 int kfree (struct i40e_vsi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i40e_vsi_clear(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf;

 if (!vsi)
  return 0;

 if (!vsi->back)
  goto free_vsi;
 pf = vsi->back;

 mutex_lock(&pf->switch_mutex);
 if (!pf->vsi[vsi->idx]) {
  dev_err(&pf->pdev->dev, "pf->vsi[%d] is NULL, just free vsi[%d](type %d)\n",
   vsi->idx, vsi->idx, vsi->type);
  goto unlock_vsi;
 }

 if (pf->vsi[vsi->idx] != vsi) {
  dev_err(&pf->pdev->dev,
   "pf->vsi[%d](type %d) != vsi[%d](type %d): no free!\n",
   pf->vsi[vsi->idx]->idx,
   pf->vsi[vsi->idx]->type,
   vsi->idx, vsi->type);
  goto unlock_vsi;
 }


 i40e_put_lump(pf->qp_pile, vsi->base_queue, vsi->idx);
 i40e_put_lump(pf->irq_pile, vsi->base_vector, vsi->idx);

 bitmap_free(vsi->af_xdp_zc_qps);
 i40e_vsi_free_arrays(vsi, 1);
 i40e_clear_rss_config_user(vsi);

 pf->vsi[vsi->idx] = ((void*)0);
 if (vsi->idx < pf->next_vsi)
  pf->next_vsi = vsi->idx;

unlock_vsi:
 mutex_unlock(&pf->switch_mutex);
free_vsi:
 kfree(vsi);

 return 0;
}
