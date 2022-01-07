
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_ether_addr_list {int num_elements; TYPE_1__* list; int vsi_id; } ;
struct i40e_vsi {int mac_filter_hash_lock; } ;
struct i40e_vf {size_t lan_vsi_idx; scalar_t__ vf_id; int num_mac; int vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {TYPE_2__* pdev; struct i40e_vsi** vsi; } ;
struct i40e_mac_filter {int dummy; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ addr; } ;


 scalar_t__ I40E_ERR_PARAM ;
 int I40E_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_ADD_ETH_ADDR ;
 int dev_err (int *,char*,scalar_t__,scalar_t__) ;
 struct i40e_mac_filter* i40e_add_mac_filter (struct i40e_vsi*,scalar_t__) ;
 scalar_t__ i40e_check_vf_permission (struct i40e_vf*,struct virtchnl_ether_addr_list*) ;
 struct i40e_mac_filter* i40e_find_mac (struct i40e_vsi*,scalar_t__) ;
 scalar_t__ i40e_sync_vsi_filters (struct i40e_vsi*) ;
 int i40e_vc_isvalid_vsi_id (struct i40e_vf*,int ) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_ether_addr_list *al =
     (struct virtchnl_ether_addr_list *)msg;
 struct i40e_pf *pf = vf->pf;
 struct i40e_vsi *vsi = ((void*)0);
 i40e_status ret = 0;
 int i;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
     !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
  ret = I40E_ERR_PARAM;
  goto error_param;
 }

 vsi = pf->vsi[vf->lan_vsi_idx];




 spin_lock_bh(&vsi->mac_filter_hash_lock);

 ret = i40e_check_vf_permission(vf, al);
 if (ret) {
  spin_unlock_bh(&vsi->mac_filter_hash_lock);
  goto error_param;
 }


 for (i = 0; i < al->num_elements; i++) {
  struct i40e_mac_filter *f;

  f = i40e_find_mac(vsi, al->list[i].addr);
  if (!f) {
   f = i40e_add_mac_filter(vsi, al->list[i].addr);

   if (!f) {
    dev_err(&pf->pdev->dev,
     "Unable to add MAC filter %pM for VF %d\n",
     al->list[i].addr, vf->vf_id);
    ret = I40E_ERR_PARAM;
    spin_unlock_bh(&vsi->mac_filter_hash_lock);
    goto error_param;
   } else {
    vf->num_mac++;
   }
  }
 }
 spin_unlock_bh(&vsi->mac_filter_hash_lock);


 ret = i40e_sync_vsi_filters(vsi);
 if (ret)
  dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
   vf->vf_id, ret);

error_param:

 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
           ret);
}
