
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {struct bnx2x_credit_pool_obj* vlans_pool; } ;
struct bnx2x_credit_pool_obj {int (* get ) (struct bnx2x_credit_pool_obj*,int) ;} ;


 int WARN_ON (int) ;
 int stub1 (struct bnx2x_credit_pool_obj*,int) ;

__attribute__((used)) static bool bnx2x_get_credit_vlan(struct bnx2x_vlan_mac_obj *o)
{
 struct bnx2x_credit_pool_obj *vp = o->vlans_pool;

 WARN_ON(!vp);

 return vp->get(vp, 1);
}
