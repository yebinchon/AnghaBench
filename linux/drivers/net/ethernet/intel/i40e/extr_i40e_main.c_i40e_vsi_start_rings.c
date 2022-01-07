
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int dummy; } ;


 int i40e_vsi_control_rx (struct i40e_vsi*,int) ;
 int i40e_vsi_control_tx (struct i40e_vsi*,int) ;

int i40e_vsi_start_rings(struct i40e_vsi *vsi)
{
 int ret = 0;


 ret = i40e_vsi_control_rx(vsi, 1);
 if (ret)
  return ret;
 ret = i40e_vsi_control_tx(vsi, 1);

 return ret;
}
