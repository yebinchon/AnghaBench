
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ pvid; } ;
struct ice_vsi {TYPE_3__ info; } ;
struct ice_vf {size_t lan_vsi_idx; int port_vlan_id; int vf_states; } ;
struct ice_pf {int num_alloc_vfs; TYPE_2__* pdev; struct ice_vsi** vsi; struct ice_vf* vf; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
typedef scalar_t__ __be16 ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct ice_pf* back; } ;


 int EBUSY ;
 int EINVAL ;
 int EPROTONOSUPPORT ;
 int ETH_P_8021Q ;
 int ICE_MAX_VLANID ;
 int ICE_VF_STATE_INIT ;
 int ICE_VLAN_PRIORITY_S ;
 int VLAN_VID_MASK ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,...) ;
 scalar_t__ htons (int ) ;
 int ice_vsi_add_vlan (struct ice_vsi*,int) ;
 int ice_vsi_kill_vlan (struct ice_vsi*,int) ;
 int ice_vsi_manage_pvid (struct ice_vsi*,int,int) ;
 int le16_to_cpu (scalar_t__) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

int
ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
       __be16 vlan_proto)
{
 u16 vlanprio = vlan_id | (qos << ICE_VLAN_PRIORITY_S);
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_pf *pf = np->vsi->back;
 struct ice_vsi *vsi;
 struct ice_vf *vf;
 int ret = 0;


 if (vf_id >= pf->num_alloc_vfs) {
  dev_err(&pf->pdev->dev, "invalid VF id: %d\n", vf_id);
  return -EINVAL;
 }

 if (vlan_id > ICE_MAX_VLANID || qos > 7) {
  dev_err(&pf->pdev->dev, "Invalid VF Parameters\n");
  return -EINVAL;
 }

 if (vlan_proto != htons(ETH_P_8021Q)) {
  dev_err(&pf->pdev->dev, "VF VLAN protocol is not supported\n");
  return -EPROTONOSUPPORT;
 }

 vf = &pf->vf[vf_id];
 vsi = pf->vsi[vf->lan_vsi_idx];
 if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
  dev_err(&pf->pdev->dev, "VF %d in reset. Try again.\n", vf_id);
  return -EBUSY;
 }

 if (le16_to_cpu(vsi->info.pvid) == vlanprio) {

  dev_info(&pf->pdev->dev,
    "Duplicate pvid %d request\n", vlanprio);
  return ret;
 }


 if (vsi->info.pvid)
  ice_vsi_kill_vlan(vsi, (le16_to_cpu(vsi->info.pvid) &
      VLAN_VID_MASK));

 if (vlan_id || qos) {
  ret = ice_vsi_manage_pvid(vsi, vlanprio, 1);
  if (ret)
   goto error_set_pvid;
 } else {
  ice_vsi_manage_pvid(vsi, 0, 0);
  vsi->info.pvid = 0;
 }

 if (vlan_id) {
  dev_info(&pf->pdev->dev, "Setting VLAN %d, QOS 0x%x on VF %d\n",
    vlan_id, qos, vf_id);


  ret = ice_vsi_add_vlan(vsi, vlan_id);
  if (ret)
   goto error_set_pvid;
 }




 vf->port_vlan_id = le16_to_cpu(vsi->info.pvid);

error_set_pvid:
 return ret;
}
