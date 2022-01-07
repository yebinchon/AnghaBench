
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {TYPE_1__* back; } ;
struct TYPE_2__ {int state; } ;


 int __I40E_PORT_SUSPENDED ;
 int i40e_vsi_control_rx (struct i40e_vsi*,int) ;
 int i40e_vsi_control_tx (struct i40e_vsi*,int) ;
 void i40e_vsi_stop_rings_no_wait (struct i40e_vsi*) ;
 scalar_t__ test_bit (int ,int ) ;

void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
{

 if (test_bit(__I40E_PORT_SUSPENDED, vsi->back->state))
  return i40e_vsi_stop_rings_no_wait(vsi);




 i40e_vsi_control_tx(vsi, 0);
 i40e_vsi_control_rx(vsi, 0);
}
