
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int num_tc; } ;
struct TYPE_4__ {TYPE_1__ qopt; } ;
struct i40e_vsi {TYPE_2__ mqprio_qopt; } ;
struct i40e_pf {size_t lan_vsi; struct i40e_vsi** vsi; } ;


 int BIT (int) ;

__attribute__((used)) static u8 i40e_mqprio_get_enabled_tc(struct i40e_pf *pf)
{
 struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 u8 num_tc = vsi->mqprio_qopt.qopt.num_tc;
 u8 enabled_tc = 1, i;

 for (i = 1; i < num_tc; i++)
  enabled_tc |= BIT(i);
 return enabled_tc;
}
