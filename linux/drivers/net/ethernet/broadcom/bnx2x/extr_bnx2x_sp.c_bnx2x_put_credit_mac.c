
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {struct bnx2x_credit_pool_obj* macs_pool; } ;
struct bnx2x_credit_pool_obj {int (* put ) (struct bnx2x_credit_pool_obj*,int) ;} ;


 int stub1 (struct bnx2x_credit_pool_obj*,int) ;

__attribute__((used)) static bool bnx2x_put_credit_mac(struct bnx2x_vlan_mac_obj *o)
{
 struct bnx2x_credit_pool_obj *mp = o->macs_pool;

 return mp->put(mp, 1);
}
