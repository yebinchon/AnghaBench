
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_key {int mask; } ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int mlxsw_sp_acl_erp_hints_obj_cmp(const void *obj1, const void *obj2)
{
 const struct mlxsw_sp_acl_erp_key *key1 = obj1;
 const struct mlxsw_sp_acl_erp_key *key2 = obj2;





 return memcmp(key1->mask, key2->mask, sizeof(key1->mask));
}
