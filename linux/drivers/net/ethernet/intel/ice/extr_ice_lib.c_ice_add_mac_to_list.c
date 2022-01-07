
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct list_head {int dummy; } ;
struct ice_vsi {int idx; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_6__ {int mac_addr; } ;
struct TYPE_7__ {TYPE_2__ mac; } ;
struct TYPE_8__ {TYPE_3__ l_data; int vsi_handle; int fltr_act; int lkup_type; int src_id; int flag; } ;
struct ice_fltr_list_entry {int list_entry; TYPE_4__ fltr_info; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int ICE_FLTR_TX ;
 int ICE_FWD_TO_VSI ;
 int ICE_SRC_ID_VSI ;
 int ICE_SW_LKUP_MAC ;
 int INIT_LIST_HEAD (int *) ;
 struct ice_fltr_list_entry* devm_kzalloc (int *,int,int ) ;
 int ether_addr_copy (int ,int const*) ;
 int list_add (int *,struct list_head*) ;

int ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
   const u8 *macaddr)
{
 struct ice_fltr_list_entry *tmp;
 struct ice_pf *pf = vsi->back;

 tmp = devm_kzalloc(&pf->pdev->dev, sizeof(*tmp), GFP_ATOMIC);
 if (!tmp)
  return -ENOMEM;

 tmp->fltr_info.flag = ICE_FLTR_TX;
 tmp->fltr_info.src_id = ICE_SRC_ID_VSI;
 tmp->fltr_info.lkup_type = ICE_SW_LKUP_MAC;
 tmp->fltr_info.fltr_act = ICE_FWD_TO_VSI;
 tmp->fltr_info.vsi_handle = vsi->idx;
 ether_addr_copy(tmp->fltr_info.l_data.mac.mac_addr, macaddr);

 INIT_LIST_HEAD(&tmp->list_entry);
 list_add(&tmp->list_entry, add_list);

 return 0;
}
