
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct ice_vsi {int vsi_num; int idx; struct ice_pf* back; } ;
struct ice_pf {TYPE_4__* pdev; int hw; } ;
struct TYPE_5__ {int vlan_id; } ;
struct TYPE_6__ {TYPE_1__ vlan; } ;
struct TYPE_7__ {TYPE_2__ l_data; int vsi_handle; int src_id; int flag; int fltr_act; int lkup_type; } ;
struct ice_fltr_list_entry {int list_entry; TYPE_3__ fltr_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_8__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICE_FLTR_TX ;
 int ICE_FWD_TO_VSI ;
 int ICE_SRC_ID_VSI ;
 int ICE_SW_LKUP_VLAN ;
 int INIT_LIST_HEAD (int *) ;
 int LIST_HEAD (int ) ;
 int dev_err (int *,char*,int ,int ) ;
 struct ice_fltr_list_entry* devm_kzalloc (int *,int,int ) ;
 int ice_add_vlan (int *,int *) ;
 int ice_free_fltr_list (int *,int *) ;
 int list_add (int *,int *) ;
 int tmp_add_list ;

int ice_vsi_add_vlan(struct ice_vsi *vsi, u16 vid)
{
 struct ice_fltr_list_entry *tmp;
 struct ice_pf *pf = vsi->back;
 LIST_HEAD(tmp_add_list);
 enum ice_status status;
 int err = 0;

 tmp = devm_kzalloc(&pf->pdev->dev, sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return -ENOMEM;

 tmp->fltr_info.lkup_type = ICE_SW_LKUP_VLAN;
 tmp->fltr_info.fltr_act = ICE_FWD_TO_VSI;
 tmp->fltr_info.flag = ICE_FLTR_TX;
 tmp->fltr_info.src_id = ICE_SRC_ID_VSI;
 tmp->fltr_info.vsi_handle = vsi->idx;
 tmp->fltr_info.l_data.vlan.vlan_id = vid;

 INIT_LIST_HEAD(&tmp->list_entry);
 list_add(&tmp->list_entry, &tmp_add_list);

 status = ice_add_vlan(&pf->hw, &tmp_add_list);
 if (status) {
  err = -ENODEV;
  dev_err(&pf->pdev->dev, "Failure Adding VLAN %d on VSI %i\n",
   vid, vsi->vsi_num);
 }

 ice_free_fltr_list(&pf->pdev->dev, &tmp_add_list);
 return err;
}
