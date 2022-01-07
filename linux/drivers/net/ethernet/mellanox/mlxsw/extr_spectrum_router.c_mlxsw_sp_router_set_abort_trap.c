
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;


 int MLXSW_REG_RALXX_PROTOCOL_IPV4 ;
 int MLXSW_REG_RALXX_PROTOCOL_IPV6 ;
 scalar_t__ MLXSW_SP_LPM_TREE_MIN ;
 int __mlxsw_sp_router_set_abort_trap (struct mlxsw_sp*,int,scalar_t__) ;

__attribute__((used)) static int mlxsw_sp_router_set_abort_trap(struct mlxsw_sp *mlxsw_sp)
{
 enum mlxsw_reg_ralxx_protocol proto = MLXSW_REG_RALXX_PROTOCOL_IPV4;
 int err;

 err = __mlxsw_sp_router_set_abort_trap(mlxsw_sp, proto,
            MLXSW_SP_LPM_TREE_MIN);
 if (err)
  return err;





 proto = MLXSW_REG_RALXX_PROTOCOL_IPV6;
 return __mlxsw_sp_router_set_abort_trap(mlxsw_sp, proto,
      MLXSW_SP_LPM_TREE_MIN + 1);
}
