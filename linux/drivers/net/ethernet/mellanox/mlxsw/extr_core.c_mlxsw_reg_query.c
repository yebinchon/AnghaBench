
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_reg_info {int dummy; } ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_CORE_REG_ACCESS_TYPE_QUERY ;
 int mlxsw_core_reg_access (struct mlxsw_core*,struct mlxsw_reg_info const*,char*,int ) ;

int mlxsw_reg_query(struct mlxsw_core *mlxsw_core,
      const struct mlxsw_reg_info *reg, char *payload)
{
 return mlxsw_core_reg_access(mlxsw_core, reg, payload,
         MLXSW_CORE_REG_ACCESS_TYPE_QUERY);
}
