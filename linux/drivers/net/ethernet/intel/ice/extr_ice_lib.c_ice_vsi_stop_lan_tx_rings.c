
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_vsi {int tx_rings; } ;
typedef enum ice_disq_rst_src { ____Placeholder_ice_disq_rst_src } ice_disq_rst_src ;


 int ice_vsi_stop_tx_rings (struct ice_vsi*,int,int ,int ) ;

int
ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
     u16 rel_vmvf_num)
{
 return ice_vsi_stop_tx_rings(vsi, rst_src, rel_vmvf_num, vsi->tx_rings);
}
