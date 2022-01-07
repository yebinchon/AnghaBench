
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ice_vsi {int vsi_num; int idx; struct ice_pf* back; } ;
struct ice_pf {TYPE_4__* pdev; int hw; } ;
struct TYPE_5__ {int ethertype; } ;
struct TYPE_6__ {TYPE_1__ ethertype_mac; } ;
struct TYPE_7__ {int src_id; int flag; int fltr_act; TYPE_2__ l_data; int vsi_handle; int lkup_type; } ;
struct ice_fltr_list_entry {int list_entry; TYPE_3__ fltr_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_8__ {int dev; } ;


 int ETH_P_LLDP ;
 int GFP_KERNEL ;
 int ICE_DROP_PACKET ;
 int ICE_FLTR_RX ;
 int ICE_FLTR_TX ;
 int ICE_FWD_TO_VSI ;
 int ICE_SRC_ID_LPORT ;
 int ICE_SRC_ID_VSI ;
 int ICE_SW_LKUP_ETHERTYPE ;
 int INIT_LIST_HEAD (int *) ;
 int LIST_HEAD (int ) ;
 int dev_err (int *,char*,char*,char*,int ,int) ;
 struct ice_fltr_list_entry* devm_kzalloc (int *,int,int ) ;
 int ice_add_eth_mac (int *,int *) ;
 int ice_free_fltr_list (int *,int *) ;
 int ice_remove_eth_mac (int *,int *) ;
 int list_add (int *,int *) ;
 int tmp_add_list ;

void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
{
 struct ice_fltr_list_entry *list;
 struct ice_pf *pf = vsi->back;
 LIST_HEAD(tmp_add_list);
 enum ice_status status;

 list = devm_kzalloc(&pf->pdev->dev, sizeof(*list), GFP_KERNEL);
 if (!list)
  return;

 list->fltr_info.lkup_type = ICE_SW_LKUP_ETHERTYPE;
 list->fltr_info.vsi_handle = vsi->idx;
 list->fltr_info.l_data.ethertype_mac.ethertype = ETH_P_LLDP;

 if (tx) {
  list->fltr_info.fltr_act = ICE_DROP_PACKET;
  list->fltr_info.flag = ICE_FLTR_TX;
  list->fltr_info.src_id = ICE_SRC_ID_VSI;
 } else {
  list->fltr_info.fltr_act = ICE_FWD_TO_VSI;
  list->fltr_info.flag = ICE_FLTR_RX;
  list->fltr_info.src_id = ICE_SRC_ID_LPORT;
 }

 INIT_LIST_HEAD(&list->list_entry);
 list_add(&list->list_entry, &tmp_add_list);

 if (create)
  status = ice_add_eth_mac(&pf->hw, &tmp_add_list);
 else
  status = ice_remove_eth_mac(&pf->hw, &tmp_add_list);

 if (status)
  dev_err(&pf->pdev->dev,
   "Fail %s %s LLDP rule on VSI %i error: %d\n",
   create ? "adding" : "removing", tx ? "TX" : "RX",
   vsi->vsi_num, status);

 ice_free_fltr_list(&pf->pdev->dev, &tmp_add_list);
}
