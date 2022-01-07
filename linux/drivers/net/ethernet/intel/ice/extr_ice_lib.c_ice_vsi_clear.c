
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {size_t idx; struct ice_pf* back; } ;
struct ice_pf {size_t next_vsi; TYPE_1__* pdev; int sw_mutex; struct ice_vsi** vsi; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,size_t) ;
 int devm_kfree (int *,struct ice_vsi*) ;
 int ice_vsi_free_arrays (struct ice_vsi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ice_vsi_clear(struct ice_vsi *vsi)
{
 struct ice_pf *pf = ((void*)0);

 if (!vsi)
  return 0;

 if (!vsi->back)
  return -EINVAL;

 pf = vsi->back;

 if (!pf->vsi[vsi->idx] || pf->vsi[vsi->idx] != vsi) {
  dev_dbg(&pf->pdev->dev, "vsi does not exist at pf->vsi[%d]\n",
   vsi->idx);
  return -EINVAL;
 }

 mutex_lock(&pf->sw_mutex);


 pf->vsi[vsi->idx] = ((void*)0);
 if (vsi->idx < pf->next_vsi)
  pf->next_vsi = vsi->idx;

 ice_vsi_free_arrays(vsi);
 mutex_unlock(&pf->sw_mutex);
 devm_kfree(&pf->pdev->dev, vsi);

 return 0;
}
