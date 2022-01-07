
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlxsw_sp_acl_erp_rehash_hints_put (void*) ;

void mlxsw_sp_acl_atcam_rehash_hints_put(void *hints_priv)
{
 mlxsw_sp_acl_erp_rehash_hints_put(hints_priv);
}
