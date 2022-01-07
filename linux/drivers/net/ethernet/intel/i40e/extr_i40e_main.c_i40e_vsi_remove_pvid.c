
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pvid; } ;
struct i40e_vsi {TYPE_1__ info; } ;


 int i40e_vlan_stripping_disable (struct i40e_vsi*) ;

void i40e_vsi_remove_pvid(struct i40e_vsi *vsi)
{
 vsi->info.pvid = 0;

 i40e_vlan_stripping_disable(vsi);
}
