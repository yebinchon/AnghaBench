
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {scalar_t__ netdev; } ;


 int ice_set_rx_mode (scalar_t__) ;
 int ice_vsi_cfg_dcb_rings (struct ice_vsi*) ;
 int ice_vsi_cfg_lan_txqs (struct ice_vsi*) ;
 int ice_vsi_cfg_rxqs (struct ice_vsi*) ;
 int ice_vsi_vlan_setup (struct ice_vsi*) ;

int ice_vsi_cfg(struct ice_vsi *vsi)
{
 int err;

 if (vsi->netdev) {
  ice_set_rx_mode(vsi->netdev);

  err = ice_vsi_vlan_setup(vsi);

  if (err)
   return err;
 }
 ice_vsi_cfg_dcb_rings(vsi);

 err = ice_vsi_cfg_lan_txqs(vsi);
 if (!err)
  err = ice_vsi_cfg_rxqs(vsi);

 return err;
}
