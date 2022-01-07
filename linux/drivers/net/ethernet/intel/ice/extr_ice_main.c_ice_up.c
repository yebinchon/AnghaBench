
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int dummy; } ;


 int ice_up_complete (struct ice_vsi*) ;
 int ice_vsi_cfg (struct ice_vsi*) ;

int ice_up(struct ice_vsi *vsi)
{
 int err;

 err = ice_vsi_cfg(vsi);
 if (!err)
  err = ice_up_complete(vsi);

 return err;
}
