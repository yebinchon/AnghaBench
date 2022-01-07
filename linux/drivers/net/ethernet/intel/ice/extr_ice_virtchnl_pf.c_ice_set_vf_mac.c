
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct TYPE_2__ {int addr; } ;
struct ice_vf {int pf_set_mac; TYPE_1__ dflt_lan_addr; int vf_states; } ;
struct ice_pf {int num_alloc_vfs; struct ice_vf* vf; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;


 int EBUSY ;
 int EINVAL ;
 int ICE_VF_STATE_INIT ;
 int ether_addr_copy (int ,int *) ;
 int ice_vc_dis_vf (struct ice_vf*) ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netdev_info (struct net_device*,char*,int,int *) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 struct ice_vf *vf;
 int ret = 0;


 if (vf_id >= pf->num_alloc_vfs) {
  netdev_err(netdev, "invalid VF id: %d\n", vf_id);
  return -EINVAL;
 }

 vf = &pf->vf[vf_id];
 if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
  netdev_err(netdev, "VF %d in reset. Try again.\n", vf_id);
  return -EBUSY;
 }

 if (is_zero_ether_addr(mac) || is_multicast_ether_addr(mac)) {
  netdev_err(netdev, "%pM not a valid unicast address\n", mac);
  return -EINVAL;
 }






 ether_addr_copy(vf->dflt_lan_addr.addr, mac);
 vf->pf_set_mac = 1;
 netdev_info(netdev,
      "MAC on VF %d set to %pM. VF driver will be reinitialized\n",
      vf_id, mac);

 ice_vc_dis_vf(vf);
 return ret;
}
