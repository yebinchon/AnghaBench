
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40e_vsi {int dummy; } ;
struct i40e_mac_filter {int dummy; } ;
typedef int s16 ;


 int __i40e_del_filter (struct i40e_vsi*,struct i40e_mac_filter*) ;
 struct i40e_mac_filter* i40e_find_filter (struct i40e_vsi*,int const*,int ) ;

void i40e_del_filter(struct i40e_vsi *vsi, const u8 *macaddr, s16 vlan)
{
 struct i40e_mac_filter *f;

 if (!vsi || !macaddr)
  return;

 f = i40e_find_filter(vsi, macaddr, vlan);
 __i40e_del_filter(vsi, f);
}
