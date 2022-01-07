
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {int enabled_tc; } ;
struct i40e_vsi {scalar_t__ seid; scalar_t__ uplink_seid; int flags; int type; int alloc_queue_pairs; int base_queue; int netdev_registered; int * netdev; int idx; int vf_id; int veb_idx; TYPE_3__* back; TYPE_1__ tc_config; } ;
struct i40e_veb {scalar_t__ seid; int idx; int bridge_mode; } ;
struct i40e_pf {scalar_t__ mac_seid; int num_alloc_vsi; size_t lan_vsi; int flags; int hw_features; int hw; TYPE_4__* pdev; int qp_pile; struct i40e_vsi** vsi; struct i40e_veb** veb; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int BRIDGE_MODE_VEPA ;
 int I40E_FLAG_VEB_MODE_ENABLED ;
 int I40E_HW_RSS_AQ_CAPABLE ;
 int I40E_MAX_VEB ;
 int I40E_NO_VEB ;

 int I40E_VSI_FLAG_VEB_OWNER ;

 scalar_t__ I40E_VSI_SRIOV ;

 int dev_info (int *,char*,...) ;
 int free_netdev (int *) ;
 int i40e_add_vsi (struct i40e_vsi*) ;
 int i40e_alloc_rings (struct i40e_vsi*) ;
 int i40e_aq_delete_element (int *,scalar_t__,int *) ;
 int i40e_config_bridge_mode (struct i40e_veb*) ;
 int i40e_config_netdev (struct i40e_vsi*) ;
 int i40e_dcbnl_setup (struct i40e_vsi*) ;
 scalar_t__ i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_get_lump (struct i40e_pf*,int ,scalar_t__,int ) ;
 struct i40e_veb* i40e_veb_setup (struct i40e_pf*,int ,scalar_t__,scalar_t__,int ) ;
 int i40e_vsi_clear (struct i40e_vsi*) ;
 int i40e_vsi_config_rss (struct i40e_vsi*) ;
 int i40e_vsi_free_q_vectors (struct i40e_vsi*) ;
 int i40e_vsi_map_rings_to_vectors (struct i40e_vsi*) ;
 int i40e_vsi_mem_alloc (struct i40e_pf*,scalar_t__) ;
 int i40e_vsi_reset_stats (struct i40e_vsi*) ;
 int i40e_vsi_setup_vectors (struct i40e_vsi*) ;
 int netif_carrier_off (int *) ;
 int register_netdev (int *) ;
 int unregister_netdev (int *) ;

struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
    u16 uplink_seid, u32 param1)
{
 struct i40e_vsi *vsi = ((void*)0);
 struct i40e_veb *veb = ((void*)0);
 u16 alloc_queue_pairs;
 int ret, i;
 int v_idx;
 for (i = 0; i < I40E_MAX_VEB; i++) {
  if (pf->veb[i] && pf->veb[i]->seid == uplink_seid) {
   veb = pf->veb[i];
   break;
  }
 }

 if (!veb && uplink_seid != pf->mac_seid) {

  for (i = 0; i < pf->num_alloc_vsi; i++) {
   if (pf->vsi[i] && pf->vsi[i]->seid == uplink_seid) {
    vsi = pf->vsi[i];
    break;
   }
  }
  if (!vsi) {
   dev_info(&pf->pdev->dev, "no such uplink_seid %d\n",
     uplink_seid);
   return ((void*)0);
  }

  if (vsi->uplink_seid == pf->mac_seid)
   veb = i40e_veb_setup(pf, 0, pf->mac_seid, vsi->seid,
          vsi->tc_config.enabled_tc);
  else if ((vsi->flags & I40E_VSI_FLAG_VEB_OWNER) == 0)
   veb = i40e_veb_setup(pf, 0, vsi->uplink_seid, vsi->seid,
          vsi->tc_config.enabled_tc);
  if (veb) {
   if (vsi->seid != pf->vsi[pf->lan_vsi]->seid) {
    dev_info(&vsi->back->pdev->dev,
      "New VSI creation error, uplink seid of LAN VSI expected.\n");
    return ((void*)0);
   }




   if (!(pf->flags & I40E_FLAG_VEB_MODE_ENABLED)) {
    veb->bridge_mode = BRIDGE_MODE_VEPA;
    pf->flags &= ~I40E_FLAG_VEB_MODE_ENABLED;
   }
   i40e_config_bridge_mode(veb);
  }
  for (i = 0; i < I40E_MAX_VEB && !veb; i++) {
   if (pf->veb[i] && pf->veb[i]->seid == vsi->uplink_seid)
    veb = pf->veb[i];
  }
  if (!veb) {
   dev_info(&pf->pdev->dev, "couldn't add VEB\n");
   return ((void*)0);
  }

  vsi->flags |= I40E_VSI_FLAG_VEB_OWNER;
  uplink_seid = veb->seid;
 }


 v_idx = i40e_vsi_mem_alloc(pf, type);
 if (v_idx < 0)
  goto err_alloc;
 vsi = pf->vsi[v_idx];
 if (!vsi)
  goto err_alloc;
 vsi->type = type;
 vsi->veb_idx = (veb ? veb->idx : I40E_NO_VEB);

 if (type == 129)
  pf->lan_vsi = v_idx;
 else if (type == I40E_VSI_SRIOV)
  vsi->vf_id = param1;

 alloc_queue_pairs = vsi->alloc_queue_pairs *
       (i40e_enabled_xdp_vsi(vsi) ? 2 : 1);

 ret = i40e_get_lump(pf, pf->qp_pile, alloc_queue_pairs, vsi->idx);
 if (ret < 0) {
  dev_info(&pf->pdev->dev,
    "failed to get tracking for %d queues for VSI %d err=%d\n",
    alloc_queue_pairs, vsi->seid, ret);
  goto err_vsi;
 }
 vsi->base_queue = ret;


 vsi->uplink_seid = uplink_seid;
 ret = i40e_add_vsi(vsi);
 if (ret)
  goto err_vsi;

 switch (vsi->type) {

 case 129:
 case 128:
  ret = i40e_config_netdev(vsi);
  if (ret)
   goto err_netdev;
  ret = register_netdev(vsi->netdev);
  if (ret)
   goto err_netdev;
  vsi->netdev_registered = 1;
  netif_carrier_off(vsi->netdev);






 case 130:

  ret = i40e_vsi_setup_vectors(vsi);
  if (ret)
   goto err_msix;

  ret = i40e_alloc_rings(vsi);
  if (ret)
   goto err_rings;


  i40e_vsi_map_rings_to_vectors(vsi);

  i40e_vsi_reset_stats(vsi);
  break;

 default:

  break;
 }

 if ((pf->hw_features & I40E_HW_RSS_AQ_CAPABLE) &&
     (vsi->type == 128)) {
  ret = i40e_vsi_config_rss(vsi);
 }
 return vsi;

err_rings:
 i40e_vsi_free_q_vectors(vsi);
err_msix:
 if (vsi->netdev_registered) {
  vsi->netdev_registered = 0;
  unregister_netdev(vsi->netdev);
  free_netdev(vsi->netdev);
  vsi->netdev = ((void*)0);
 }
err_netdev:
 i40e_aq_delete_element(&pf->hw, vsi->seid, ((void*)0));
err_vsi:
 i40e_vsi_clear(vsi);
err_alloc:
 return ((void*)0);
}
