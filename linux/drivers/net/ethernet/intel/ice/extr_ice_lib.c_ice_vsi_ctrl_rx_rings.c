
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int num_rxq; } ;


 int ice_vsi_ctrl_rx_ring (struct ice_vsi*,int,int) ;

__attribute__((used)) static int ice_vsi_ctrl_rx_rings(struct ice_vsi *vsi, bool ena)
{
 int i, ret = 0;

 for (i = 0; i < vsi->num_rxq; i++) {
  ret = ice_vsi_ctrl_rx_ring(vsi, ena, i);
  if (ret)
   break;
 }

 return ret;
}
