
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int dummy; } ;


 int ice_vsi_ctrl_rx_rings (struct ice_vsi*,int) ;

int ice_vsi_start_rx_rings(struct ice_vsi *vsi)
{
 return ice_vsi_ctrl_rx_rings(vsi, 1);
}
