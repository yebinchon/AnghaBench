
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ice_vsi {int type; size_t idx; int irq_handler; int state; struct ice_pf* back; } ;
struct ice_pf {size_t next_vsi; int sw_mutex; TYPE_1__* pdev; int num_alloc_vsi; struct ice_vsi** vsi; } ;
typedef enum ice_vsi_type { ____Placeholder_ice_vsi_type } ice_vsi_type ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int ICE_INVAL_VFID ;
 size_t ICE_NO_VSI ;



 int __ICE_DOWN ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int devm_kfree (int *,struct ice_vsi*) ;
 struct ice_vsi* devm_kzalloc (int *,int,int ) ;
 size_t ice_get_free_slot (struct ice_vsi**,int ,size_t) ;
 int ice_msix_clean_rings ;
 int ice_vsi_alloc_arrays (struct ice_vsi*) ;
 int ice_vsi_set_num_qs (struct ice_vsi*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static struct ice_vsi *
ice_vsi_alloc(struct ice_pf *pf, enum ice_vsi_type type, u16 vf_id)
{
 struct ice_vsi *vsi = ((void*)0);


 mutex_lock(&pf->sw_mutex);





 if (pf->next_vsi == ICE_NO_VSI) {
  dev_dbg(&pf->pdev->dev, "out of VSI slots!\n");
  goto unlock_pf;
 }

 vsi = devm_kzalloc(&pf->pdev->dev, sizeof(*vsi), GFP_KERNEL);
 if (!vsi)
  goto unlock_pf;

 vsi->type = type;
 vsi->back = pf;
 set_bit(__ICE_DOWN, vsi->state);

 vsi->idx = pf->next_vsi;

 if (type == 128)
  ice_vsi_set_num_qs(vsi, vf_id);
 else
  ice_vsi_set_num_qs(vsi, ICE_INVAL_VFID);

 switch (vsi->type) {
 case 129:
  if (ice_vsi_alloc_arrays(vsi))
   goto err_rings;


  vsi->irq_handler = ice_msix_clean_rings;
  break;
 case 128:
  if (ice_vsi_alloc_arrays(vsi))
   goto err_rings;
  break;
 case 130:
  if (ice_vsi_alloc_arrays(vsi))
   goto err_rings;
  break;
 default:
  dev_warn(&pf->pdev->dev, "Unknown VSI type %d\n", vsi->type);
  goto unlock_pf;
 }


 pf->vsi[pf->next_vsi] = vsi;


 pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
      pf->next_vsi);
 goto unlock_pf;

err_rings:
 devm_kfree(&pf->pdev->dev, vsi);
 vsi = ((void*)0);
unlock_pf:
 mutex_unlock(&pf->sw_mutex);
 return vsi;
}
