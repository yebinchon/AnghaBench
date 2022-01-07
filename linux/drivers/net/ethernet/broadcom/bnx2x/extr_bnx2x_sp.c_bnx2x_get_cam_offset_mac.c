
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_obj {struct bnx2x_credit_pool_obj* macs_pool; } ;
struct bnx2x_credit_pool_obj {int (* get_entry ) (struct bnx2x_credit_pool_obj*,int*) ;} ;


 int WARN_ON (int) ;
 int stub1 (struct bnx2x_credit_pool_obj*,int*) ;

__attribute__((used)) static bool bnx2x_get_cam_offset_mac(struct bnx2x_vlan_mac_obj *o, int *offset)
{
 struct bnx2x_credit_pool_obj *mp = o->macs_pool;

 WARN_ON(!mp);

 return mp->get_entry(mp, offset);
}
