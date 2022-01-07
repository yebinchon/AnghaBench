
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
struct TYPE_7__ {int src_id; int flag; TYPE_2__ l_data; int fltr_act; int vsi_handle; int lkup_type; } ;
struct ice_fltr_list_entry {int list_entry; TYPE_3__ fltr_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_8__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICE_ERR_DOES_NOT_EXIST ;
 int ICE_FLTR_TX ;
 int ICE_FWD_TO_VSI ;
 int ICE_SRC_ID_VSI ;
 int ICE_SW_LKUP_VLAN ;
 int INIT_LIST_HEAD (int *) ;
 int LIST_HEAD (int ) ;
 int dev_dbg (int *,char*,int ,int ,int) ;
 int dev_err (int *,char*,int ,int ,int) ;
 struct ice_fltr_list_entry* devm_kzalloc (int *,int,int ) ;
 int ice_free_fltr_list (int *,int *) ;
 int ice_remove_vlan (int *,int *) ;
 int list_add (int *,int *) ;
 int tmp_add_list ;

int ice_vsi_kill_vlan(struct ice_vsi *vsi, u16 vid)
{
 struct ice_fltr_list_entry *list;
 struct ice_pf *pf = vsi->back;
 LIST_HEAD(tmp_add_list);
 enum ice_status status;
 int err = 0;

 list = devm_kzalloc(&pf->pdev->dev, sizeof(*list), GFP_KERNEL);
 if (!list)
  return -ENOMEM;

 list->fltr_info.lkup_type = ICE_SW_LKUP_VLAN;
 list->fltr_info.vsi_handle = vsi->idx;
 list->fltr_info.fltr_act = ICE_FWD_TO_VSI;
 list->fltr_info.l_data.vlan.vlan_id = vid;
 list->fltr_info.flag = ICE_FLTR_TX;
 list->fltr_info.src_id = ICE_SRC_ID_VSI;

 INIT_LIST_HEAD(&list->list_entry);
 list_add(&list->list_entry, &tmp_add_list);

 status = ice_remove_vlan(&pf->hw, &tmp_add_list);
 if (status == ICE_ERR_DOES_NOT_EXIST) {
  dev_dbg(&pf->pdev->dev,
   "Failed to remove VLAN %d on VSI %i, it does not exist, status: %d\n",
   vid, vsi->vsi_num, status);
 } else if (status) {
  dev_err(&pf->pdev->dev,
   "Error removing VLAN %d on vsi %i error: %d\n",
   vid, vsi->vsi_num, status);
  err = -EIO;
 }

 ice_free_fltr_list(&pf->pdev->dev, &tmp_add_list);
 return err;
}
