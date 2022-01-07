
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi_ctx {int info; int vsi_num; int vf_num; } ;
struct ice_vsi {scalar_t__ type; int vsi_num; int idx; int info; int vf_id; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; int hw; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ ICE_VSI_VF ;
 int dev_err (int *,char*,int ) ;
 int devm_kfree (int *,struct ice_vsi_ctx*) ;
 struct ice_vsi_ctx* devm_kzalloc (int *,int,int ) ;
 int ice_free_vsi (int *,int ,struct ice_vsi_ctx*,int,int *) ;
 int memcpy (int *,int *,int) ;

void ice_vsi_delete(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 struct ice_vsi_ctx *ctxt;
 enum ice_status status;

 ctxt = devm_kzalloc(&pf->pdev->dev, sizeof(*ctxt), GFP_KERNEL);
 if (!ctxt)
  return;

 if (vsi->type == ICE_VSI_VF)
  ctxt->vf_num = vsi->vf_id;
 ctxt->vsi_num = vsi->vsi_num;

 memcpy(&ctxt->info, &vsi->info, sizeof(ctxt->info));

 status = ice_free_vsi(&pf->hw, vsi->idx, ctxt, 0, ((void*)0));
 if (status)
  dev_err(&pf->pdev->dev, "Failed to delete VSI %i in FW\n",
   vsi->vsi_num);

 devm_kfree(&pf->pdev->dev, ctxt);
}
