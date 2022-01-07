
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int vsi_num; int netdev; } ;


 int ICE_NO_RESET ;
 int ice_vsi_free_rx_rings (struct ice_vsi*) ;
 int ice_vsi_free_tx_rings (struct ice_vsi*) ;
 int ice_vsi_stop_lan_tx_rings (struct ice_vsi*,int ,int ) ;
 int ice_vsi_stop_rx_rings (struct ice_vsi*) ;
 int netdev_err (int ,char*,int ,int) ;

__attribute__((used)) static int ice_lbtest_disable_rings(struct ice_vsi *vsi)
{
 int status;

 status = ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, 0);
 if (status)
  netdev_err(vsi->netdev, "Failed to stop Tx rings, VSI %d error %d\n",
      vsi->vsi_num, status);

 status = ice_vsi_stop_rx_rings(vsi);
 if (status)
  netdev_err(vsi->netdev, "Failed to stop Rx rings, VSI %d error %d\n",
      vsi->vsi_num, status);

 ice_vsi_free_tx_rings(vsi);
 ice_vsi_free_rx_rings(vsi);

 return status;
}
