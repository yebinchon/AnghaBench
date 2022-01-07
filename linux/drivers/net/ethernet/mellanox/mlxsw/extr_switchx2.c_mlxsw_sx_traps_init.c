
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sx {int core; } ;


 int ARRAY_SIZE (int *) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_HTGT_DEFAULT_PRIORITY ;
 int MLXSW_REG_HTGT_DEFAULT_TC ;
 int MLXSW_REG_HTGT_INVALID_POLICER ;
 int MLXSW_REG_HTGT_LEN ;
 int MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_CTRL ;
 int MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_RX ;
 int MLXSW_REG_HTGT_TRAP_GROUP_SX2_CTRL ;
 int MLXSW_REG_HTGT_TRAP_GROUP_SX2_RX ;
 int htgt ;
 int mlxsw_core_trap_register (int ,int *,struct mlxsw_sx*) ;
 int mlxsw_core_trap_unregister (int ,int *,struct mlxsw_sx*) ;
 int mlxsw_reg_htgt_local_path_rdq_set (char*,int ) ;
 int mlxsw_reg_htgt_pack (char*,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int * mlxsw_sx_listener ;

__attribute__((used)) static int mlxsw_sx_traps_init(struct mlxsw_sx *mlxsw_sx)
{
 char htgt_pl[MLXSW_REG_HTGT_LEN];
 int i;
 int err;

 mlxsw_reg_htgt_pack(htgt_pl, MLXSW_REG_HTGT_TRAP_GROUP_SX2_RX,
       MLXSW_REG_HTGT_INVALID_POLICER,
       MLXSW_REG_HTGT_DEFAULT_PRIORITY,
       MLXSW_REG_HTGT_DEFAULT_TC);
 mlxsw_reg_htgt_local_path_rdq_set(htgt_pl,
       MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_RX);

 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(htgt), htgt_pl);
 if (err)
  return err;

 mlxsw_reg_htgt_pack(htgt_pl, MLXSW_REG_HTGT_TRAP_GROUP_SX2_CTRL,
       MLXSW_REG_HTGT_INVALID_POLICER,
       MLXSW_REG_HTGT_DEFAULT_PRIORITY,
       MLXSW_REG_HTGT_DEFAULT_TC);
 mlxsw_reg_htgt_local_path_rdq_set(htgt_pl,
     MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_CTRL);

 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(htgt), htgt_pl);
 if (err)
  return err;

 for (i = 0; i < ARRAY_SIZE(mlxsw_sx_listener); i++) {
  err = mlxsw_core_trap_register(mlxsw_sx->core,
            &mlxsw_sx_listener[i],
            mlxsw_sx);
  if (err)
   goto err_listener_register;

 }
 return 0;

err_listener_register:
 for (i--; i >= 0; i--) {
  mlxsw_core_trap_unregister(mlxsw_sx->core,
        &mlxsw_sx_listener[i],
        mlxsw_sx);
 }
 return err;
}
