
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int mtu; int min_mtu; int max_mtu; } ;
struct ice_vsi {int state; struct ice_pf* back; } ;
struct ice_pf {int state; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;


 int EBUSY ;
 int EINVAL ;
 int __ICE_DOWN ;
 int ice_down (struct ice_vsi*) ;
 scalar_t__ ice_is_reset_in_progress (int ) ;
 int ice_up (struct ice_vsi*) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_info (struct net_device*,char*,int) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int test_and_set_bit (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ice_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 u8 count = 0;

 if (new_mtu == netdev->mtu) {
  netdev_warn(netdev, "MTU is already %u\n", netdev->mtu);
  return 0;
 }

 if (new_mtu < netdev->min_mtu) {
  netdev_err(netdev, "new MTU invalid. min_mtu is %d\n",
      netdev->min_mtu);
  return -EINVAL;
 } else if (new_mtu > netdev->max_mtu) {
  netdev_err(netdev, "new MTU invalid. max_mtu is %d\n",
      netdev->min_mtu);
  return -EINVAL;
 }

 do {
  if (ice_is_reset_in_progress(pf->state)) {
   count++;
   usleep_range(1000, 2000);
  } else {
   break;
  }

 } while (count < 100);

 if (count == 100) {
  netdev_err(netdev, "can't change MTU. Device is busy\n");
  return -EBUSY;
 }

 netdev->mtu = new_mtu;


 if (!test_and_set_bit(__ICE_DOWN, vsi->state)) {
  int err;

  err = ice_down(vsi);
  if (err) {
   netdev_err(netdev, "change MTU if_up err %d\n", err);
   return err;
  }

  err = ice_up(vsi);
  if (err) {
   netdev_err(netdev, "change MTU if_up err %d\n", err);
   return err;
  }
 }

 netdev_info(netdev, "changed MTU to %d\n", new_mtu);
 return 0;
}
