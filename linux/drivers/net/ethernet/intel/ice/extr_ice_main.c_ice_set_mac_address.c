
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr {scalar_t__ sa_data; } ;
struct net_device {int * dev_addr; int addr_len; } ;
struct ice_vsi {int netdev; struct ice_pf* back; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int state; struct ice_hw hw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int ICE_AQC_MAN_MAC_UPDATE_LAA_WOL ;
 int __ICE_DOWN ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 int ice_aq_manage_mac_write (struct ice_hw*,int *,int ,int *) ;
 scalar_t__ ice_is_reset_in_progress (int ) ;
 int ice_vsi_cfg_mac_fltr (struct ice_vsi*,int *,int) ;
 int is_valid_ether_addr (int *) ;
 int memcpy (int *,int *,int ) ;
 int netdev_dbg (int ,char*,int *) ;
 int netdev_err (struct net_device*,char*,int *,...) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ice_set_mac_address(struct net_device *netdev, void *pi)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 struct ice_hw *hw = &pf->hw;
 struct sockaddr *addr = pi;
 enum ice_status status;
 u8 flags = 0;
 int err = 0;
 u8 *mac;

 mac = (u8 *)addr->sa_data;

 if (!is_valid_ether_addr(mac))
  return -EADDRNOTAVAIL;

 if (ether_addr_equal(netdev->dev_addr, mac)) {
  netdev_warn(netdev, "already using mac %pM\n", mac);
  return 0;
 }

 if (test_bit(__ICE_DOWN, pf->state) ||
     ice_is_reset_in_progress(pf->state)) {
  netdev_err(netdev, "can't set mac %pM. device not ready\n",
      mac);
  return -EBUSY;
 }
 status = ice_vsi_cfg_mac_fltr(vsi, netdev->dev_addr, 0);
 if (status) {
  err = -EADDRNOTAVAIL;
  goto err_update_filters;
 }

 status = ice_vsi_cfg_mac_fltr(vsi, mac, 1);
 if (status) {
  err = -EADDRNOTAVAIL;
  goto err_update_filters;
 }

err_update_filters:
 if (err) {
  netdev_err(netdev, "can't set MAC %pM. filter update failed\n",
      mac);
  return err;
 }


 memcpy(netdev->dev_addr, mac, netdev->addr_len);
 netdev_dbg(vsi->netdev, "updated MAC address to %pM\n",
     netdev->dev_addr);


 flags = ICE_AQC_MAN_MAC_UPDATE_LAA_WOL;
 status = ice_aq_manage_mac_write(hw, mac, flags, ((void*)0));
 if (status) {
  netdev_err(netdev, "can't set MAC %pM. write to firmware failed error %d\n",
      mac, status);
 }
 return 0;
}
