
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int tx_rings; } ;


 int ice_vsi_cfg_txqs (struct ice_vsi*,int ,int ) ;

int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi)
{
 return ice_vsi_cfg_txqs(vsi, vsi->tx_rings, 0);
}
