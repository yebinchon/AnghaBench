
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_pemrbt_protocol { ____Placeholder_mlxsw_reg_pemrbt_protocol } mlxsw_reg_pemrbt_protocol ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PEMRBT_LEN ;
 int mlxsw_reg_pemrbt_pack (char*,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_acl_ruleset_group_id (struct mlxsw_sp_acl_ruleset*) ;
 int pemrbt ;

__attribute__((used)) static int mlxsw_sp2_mr_tcam_bind_group(struct mlxsw_sp *mlxsw_sp,
     enum mlxsw_reg_pemrbt_protocol protocol,
     struct mlxsw_sp_acl_ruleset *ruleset)
{
 char pemrbt_pl[MLXSW_REG_PEMRBT_LEN];
 u16 group_id;

 group_id = mlxsw_sp_acl_ruleset_group_id(ruleset);

 mlxsw_reg_pemrbt_pack(pemrbt_pl, protocol, group_id);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pemrbt), pemrbt_pl);
}
