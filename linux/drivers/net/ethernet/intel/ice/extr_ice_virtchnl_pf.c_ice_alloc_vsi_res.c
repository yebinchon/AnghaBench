
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ice_vsi {int vsi_num; int idx; } ;
struct TYPE_4__ {int * addr; } ;
struct ice_vf {int port_vlan_id; int num_mac; TYPE_1__ dflt_lan_addr; int lan_vsi_num; int lan_vsi_idx; int vf_id; int first_vector_idx; struct ice_pf* pf; } ;
struct TYPE_6__ {int port_info; } ;
struct ice_pf {TYPE_2__* pdev; TYPE_3__ hw; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int ICE_VLAN_M ;
 int LIST_HEAD (int ) ;
 int dev_err (int *,char*,...) ;
 int eth_broadcast_addr (int *) ;
 int ice_add_mac (TYPE_3__*,int *) ;
 int ice_add_mac_to_list (struct ice_vsi*,int *,int *) ;
 int ice_calc_vf_first_vector_idx (struct ice_pf*,struct ice_vf*) ;
 int ice_free_fltr_list (int *,int *) ;
 struct ice_vsi* ice_vf_vsi_setup (struct ice_pf*,int ,int ) ;
 int ice_vsi_add_vlan (struct ice_vsi*,int) ;
 int ice_vsi_manage_pvid (struct ice_vsi*,int,int) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 int tmp_add_list ;

__attribute__((used)) static int ice_alloc_vsi_res(struct ice_vf *vf)
{
 struct ice_pf *pf = vf->pf;
 LIST_HEAD(tmp_add_list);
 u8 broadcast[ETH_ALEN];
 struct ice_vsi *vsi;
 int status = 0;


 vf->first_vector_idx = ice_calc_vf_first_vector_idx(pf, vf);

 vsi = ice_vf_vsi_setup(pf, pf->hw.port_info, vf->vf_id);
 if (!vsi) {
  dev_err(&pf->pdev->dev, "Failed to create VF VSI\n");
  return -ENOMEM;
 }

 vf->lan_vsi_idx = vsi->idx;
 vf->lan_vsi_num = vsi->vsi_num;


 if (vf->port_vlan_id) {
  ice_vsi_manage_pvid(vsi, vf->port_vlan_id, 1);
  ice_vsi_add_vlan(vsi, vf->port_vlan_id & ICE_VLAN_M);
 }

 eth_broadcast_addr(broadcast);

 status = ice_add_mac_to_list(vsi, &tmp_add_list, broadcast);
 if (status)
  goto ice_alloc_vsi_res_exit;

 if (is_valid_ether_addr(vf->dflt_lan_addr.addr)) {
  status = ice_add_mac_to_list(vsi, &tmp_add_list,
          vf->dflt_lan_addr.addr);
  if (status)
   goto ice_alloc_vsi_res_exit;
 }

 status = ice_add_mac(&pf->hw, &tmp_add_list);
 if (status)
  dev_err(&pf->pdev->dev,
   "could not add mac filters error %d\n", status);
 else
  vf->num_mac = 1;







ice_alloc_vsi_res_exit:
 ice_free_fltr_list(&pf->pdev->dev, &tmp_add_list);
 return status;
}
