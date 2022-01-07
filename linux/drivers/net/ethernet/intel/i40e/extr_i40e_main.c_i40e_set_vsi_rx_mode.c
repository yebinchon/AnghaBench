
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {scalar_t__ netdev; } ;


 int i40e_set_rx_mode (scalar_t__) ;

__attribute__((used)) static void i40e_set_vsi_rx_mode(struct i40e_vsi *vsi)
{
 if (vsi->netdev)
  i40e_set_rx_mode(vsi->netdev);
}
