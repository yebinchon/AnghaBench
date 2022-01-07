
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_12__ {scalar_t__ pvid; } ;
struct i40e_vsi {int id; TYPE_5__ info; TYPE_7__* back; int mac_filter_hash_lock; } ;
struct i40e_vf {size_t lan_vsi_idx; int port_vlan_id; int vf_states; int lan_vsi_id; } ;
struct i40e_pf {int state; TYPE_6__* pdev; struct i40e_vsi** vsi; struct i40e_vf* vf; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
typedef scalar_t__ __be16 ;
struct TYPE_10__ {int asq_last_status; } ;
struct TYPE_11__ {TYPE_3__ aq; } ;
struct TYPE_14__ {TYPE_4__ hw; TYPE_2__* pdev; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {struct i40e_pf* back; } ;


 int EAGAIN ;
 int EINVAL ;
 int EPROTONOSUPPORT ;
 int ETH_P_8021Q ;
 int I40E_MAX_VLANID ;
 int I40E_VF_STATE_INIT ;
 int I40E_VF_STATE_MC_PROMISC ;
 int I40E_VF_STATE_UC_PROMISC ;
 int I40E_VLAN_ANY ;
 int I40E_VLAN_PRIORITY_SHIFT ;
 int VLAN_VID_MASK ;
 int __I40E_VIRTCHNL_OP_PENDING ;
 int clear_bit (int ,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int,...) ;
 int dev_warn (int *,char*) ;
 scalar_t__ htons (int ) ;
 int i40e_add_vlan_all_mac (struct i40e_vsi*,int) ;
 int i40e_config_vf_promiscuous_mode (struct i40e_vf*,int ,int,int) ;
 int i40e_rm_vlan_all_mac (struct i40e_vsi*,int) ;
 int i40e_service_event_schedule (TYPE_7__*) ;
 int i40e_validate_vf (struct i40e_pf*,int) ;
 int i40e_vc_disable_vf (struct i40e_vf*) ;
 int i40e_vsi_add_pvid (struct i40e_vsi*,int) ;
 scalar_t__ i40e_vsi_has_vlans (struct i40e_vsi*) ;
 int i40e_vsi_remove_pvid (struct i40e_vsi*) ;
 int le16_to_cpu (scalar_t__) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
         u16 vlan_id, u8 qos, __be16 vlan_proto)
{
 u16 vlanprio = vlan_id | (qos << I40E_VLAN_PRIORITY_SHIFT);
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 bool allmulti = 0, alluni = 0;
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_vsi *vsi;
 struct i40e_vf *vf;
 int ret = 0;

 if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
  dev_warn(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
  return -EAGAIN;
 }


 ret = i40e_validate_vf(pf, vf_id);
 if (ret)
  goto error_pvid;

 if ((vlan_id > I40E_MAX_VLANID) || (qos > 7)) {
  dev_err(&pf->pdev->dev, "Invalid VF Parameters\n");
  ret = -EINVAL;
  goto error_pvid;
 }

 if (vlan_proto != htons(ETH_P_8021Q)) {
  dev_err(&pf->pdev->dev, "VF VLAN protocol is not supported\n");
  ret = -EPROTONOSUPPORT;
  goto error_pvid;
 }

 vf = &pf->vf[vf_id];
 vsi = pf->vsi[vf->lan_vsi_idx];
 if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
  dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
   vf_id);
  ret = -EAGAIN;
  goto error_pvid;
 }

 if (le16_to_cpu(vsi->info.pvid) == vlanprio)

  goto error_pvid;

 if (i40e_vsi_has_vlans(vsi)) {
  dev_err(&pf->pdev->dev,
   "VF %d has already configured VLAN filters and the administrator is requesting a port VLAN override.\nPlease unload and reload the VF driver for this change to take effect.\n",
   vf_id);




  i40e_vc_disable_vf(vf);

  vsi = pf->vsi[vf->lan_vsi_idx];
 }


 spin_lock_bh(&vsi->mac_filter_hash_lock);
 if ((!(vlan_id || qos) ||
     vlanprio != le16_to_cpu(vsi->info.pvid)) &&
     vsi->info.pvid) {
  ret = i40e_add_vlan_all_mac(vsi, I40E_VLAN_ANY);
  if (ret) {
   dev_info(&vsi->back->pdev->dev,
     "add VF VLAN failed, ret=%d aq_err=%d\n", ret,
     vsi->back->hw.aq.asq_last_status);
   spin_unlock_bh(&vsi->mac_filter_hash_lock);
   goto error_pvid;
  }
 }

 if (vsi->info.pvid) {

  i40e_rm_vlan_all_mac(vsi, (le16_to_cpu(vsi->info.pvid) &
        VLAN_VID_MASK));
 }

 spin_unlock_bh(&vsi->mac_filter_hash_lock);


 ret = i40e_config_vf_promiscuous_mode(vf, vf->lan_vsi_id,
           allmulti, alluni);
 if (ret) {
  dev_err(&pf->pdev->dev, "Unable to config VF promiscuous mode\n");
  goto error_pvid;
 }

 if (vlan_id || qos)
  ret = i40e_vsi_add_pvid(vsi, vlanprio);
 else
  i40e_vsi_remove_pvid(vsi);
 spin_lock_bh(&vsi->mac_filter_hash_lock);

 if (vlan_id) {
  dev_info(&pf->pdev->dev, "Setting VLAN %d, QOS 0x%x on VF %d\n",
    vlan_id, qos, vf_id);


  ret = i40e_add_vlan_all_mac(vsi, vlan_id);
  if (ret) {
   dev_info(&vsi->back->pdev->dev,
     "add VF VLAN failed, ret=%d aq_err=%d\n", ret,
     vsi->back->hw.aq.asq_last_status);
   spin_unlock_bh(&vsi->mac_filter_hash_lock);
   goto error_pvid;
  }


  i40e_rm_vlan_all_mac(vsi, I40E_VLAN_ANY);
 }

 spin_unlock_bh(&vsi->mac_filter_hash_lock);

 if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
  alluni = 1;

 if (test_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))
  allmulti = 1;


 i40e_service_event_schedule(vsi->back);

 if (ret) {
  dev_err(&pf->pdev->dev, "Unable to update VF vsi context\n");
  goto error_pvid;
 }




 vf->port_vlan_id = le16_to_cpu(vsi->info.pvid);

 ret = i40e_config_vf_promiscuous_mode(vf, vsi->id, allmulti, alluni);
 if (ret) {
  dev_err(&pf->pdev->dev, "Unable to config vf promiscuous mode\n");
  goto error_pvid;
 }

 ret = 0;

error_pvid:
 clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
 return ret;
}
