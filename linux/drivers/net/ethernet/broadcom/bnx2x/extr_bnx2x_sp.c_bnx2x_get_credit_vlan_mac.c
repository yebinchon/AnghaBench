
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {struct bnx2x_credit_pool_obj* vlans_pool; struct bnx2x_credit_pool_obj* macs_pool; } ;
struct bnx2x_credit_pool_obj {int (* put ) (struct bnx2x_credit_pool_obj*,int) ;int (* get ) (struct bnx2x_credit_pool_obj*,int) ;} ;


 int stub1 (struct bnx2x_credit_pool_obj*,int) ;
 int stub2 (struct bnx2x_credit_pool_obj*,int) ;
 int stub3 (struct bnx2x_credit_pool_obj*,int) ;

__attribute__((used)) static bool bnx2x_get_credit_vlan_mac(struct bnx2x_vlan_mac_obj *o)
{
 struct bnx2x_credit_pool_obj *mp = o->macs_pool;
 struct bnx2x_credit_pool_obj *vp = o->vlans_pool;

 if (!mp->get(mp, 1))
  return 0;

 if (!vp->get(vp, 1)) {
  mp->put(mp, 1);
  return 0;
 }

 return 1;
}
