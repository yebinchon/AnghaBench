
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int state; } ;


 int __ICE_DOWN ;
 int ice_down (struct ice_vsi*) ;
 int ice_vsi_free_irq (struct ice_vsi*) ;
 int ice_vsi_free_rx_rings (struct ice_vsi*) ;
 int ice_vsi_free_tx_rings (struct ice_vsi*) ;
 int test_and_set_bit (int ,int ) ;

void ice_vsi_close(struct ice_vsi *vsi)
{
 if (!test_and_set_bit(__ICE_DOWN, vsi->state))
  ice_down(vsi);

 ice_vsi_free_irq(vsi);
 ice_vsi_free_tx_rings(vsi);
 ice_vsi_free_rx_rings(vsi);
}
