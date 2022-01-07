
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int dummy; } ;


 int i40e_up_complete (struct i40e_vsi*) ;
 int i40e_vsi_configure (struct i40e_vsi*) ;

int i40e_up(struct i40e_vsi *vsi)
{
 int err;

 err = i40e_vsi_configure(vsi);
 if (!err)
  err = i40e_up_complete(vsi);

 return err;
}
