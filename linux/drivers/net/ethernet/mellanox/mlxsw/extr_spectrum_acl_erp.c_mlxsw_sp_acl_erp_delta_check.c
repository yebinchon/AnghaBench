
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_sp_acl_erp_key {int dummy; } ;


 int mlxsw_sp_acl_erp_delta_fill (struct mlxsw_sp_acl_erp_key const*,struct mlxsw_sp_acl_erp_key const*,int *,int *) ;

__attribute__((used)) static bool mlxsw_sp_acl_erp_delta_check(void *priv, const void *parent_obj,
      const void *obj)
{
 const struct mlxsw_sp_acl_erp_key *parent_key = parent_obj;
 const struct mlxsw_sp_acl_erp_key *key = obj;
 u16 delta_start;
 u8 delta_mask;
 int err;

 err = mlxsw_sp_acl_erp_delta_fill(parent_key, key,
       &delta_start, &delta_mask);
 return err ? 0 : 1;
}
