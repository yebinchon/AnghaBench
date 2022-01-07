
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ice_vsi {TYPE_2__* back; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_4__ {TYPE_1__* pdev; int hw; } ;
struct TYPE_3__ {int dev; } ;


 int ICE_ERR_NO_MEMORY ;
 int LIST_HEAD (int ) ;
 int ice_add_mac (int *,int *) ;
 scalar_t__ ice_add_mac_to_list (struct ice_vsi*,int *,int const*) ;
 int ice_free_fltr_list (int *,int *) ;
 int ice_remove_mac (int *,int *) ;
 int tmp_add_list ;

enum ice_status
ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set)
{
 LIST_HEAD(tmp_add_list);
 enum ice_status status;


 if (ice_add_mac_to_list(vsi, &tmp_add_list, macaddr)) {
  status = ICE_ERR_NO_MEMORY;
  goto cfg_mac_fltr_exit;
 }

 if (set)
  status = ice_add_mac(&vsi->back->hw, &tmp_add_list);
 else
  status = ice_remove_mac(&vsi->back->hw, &tmp_add_list);

cfg_mac_fltr_exit:
 ice_free_fltr_list(&vsi->back->pdev->dev, &tmp_add_list);
 return status;
}
