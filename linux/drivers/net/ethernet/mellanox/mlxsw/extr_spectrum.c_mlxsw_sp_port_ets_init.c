
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dummy; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_REG_QEEC_HIERARCY_GROUP ;
 int MLXSW_REG_QEEC_HIERARCY_PORT ;
 int MLXSW_REG_QEEC_HIERARCY_SUBGROUP ;
 int MLXSW_REG_QEEC_HIERARCY_TC ;
 int MLXSW_REG_QEEC_MAS_DIS ;
 int MLXSW_REG_QEEC_MIS_MIN ;
 int mlxsw_sp_port_ets_maxrate_set (struct mlxsw_sp_port*,int ,int,int,int ) ;
 int mlxsw_sp_port_ets_set (struct mlxsw_sp_port*,int ,int,int,int,int) ;
 int mlxsw_sp_port_min_bw_set (struct mlxsw_sp_port*,int ,int,int,int ) ;
 int mlxsw_sp_port_prio_tc_set (struct mlxsw_sp_port*,int,int ) ;

__attribute__((used)) static int mlxsw_sp_port_ets_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 int err, i;




 err = mlxsw_sp_port_ets_set(mlxsw_sp_port,
        MLXSW_REG_QEEC_HIERARCY_GROUP, 0, 0, 0,
        0);
 if (err)
  return err;
 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  err = mlxsw_sp_port_ets_set(mlxsw_sp_port,
         MLXSW_REG_QEEC_HIERARCY_SUBGROUP, i,
         0, 0, 0);
  if (err)
   return err;
 }
 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  err = mlxsw_sp_port_ets_set(mlxsw_sp_port,
         MLXSW_REG_QEEC_HIERARCY_TC, i, i,
         0, 0);
  if (err)
   return err;

  err = mlxsw_sp_port_ets_set(mlxsw_sp_port,
         MLXSW_REG_QEEC_HIERARCY_TC,
         i + 8, i,
         1, 100);
  if (err)
   return err;
 }





 err = mlxsw_sp_port_ets_maxrate_set(mlxsw_sp_port,
         MLXSW_REG_QEEC_HIERARCY_PORT, 0, 0,
         MLXSW_REG_QEEC_MAS_DIS);
 if (err)
  return err;
 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  err = mlxsw_sp_port_ets_maxrate_set(mlxsw_sp_port,
          MLXSW_REG_QEEC_HIERARCY_SUBGROUP,
          i, 0,
          MLXSW_REG_QEEC_MAS_DIS);
  if (err)
   return err;
 }
 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  err = mlxsw_sp_port_ets_maxrate_set(mlxsw_sp_port,
          MLXSW_REG_QEEC_HIERARCY_TC,
          i, i,
          MLXSW_REG_QEEC_MAS_DIS);
  if (err)
   return err;

  err = mlxsw_sp_port_ets_maxrate_set(mlxsw_sp_port,
          MLXSW_REG_QEEC_HIERARCY_TC,
          i + 8, i,
          MLXSW_REG_QEEC_MAS_DIS);
  if (err)
   return err;
 }


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  err = mlxsw_sp_port_min_bw_set(mlxsw_sp_port,
            MLXSW_REG_QEEC_HIERARCY_TC,
            i + 8, i,
            MLXSW_REG_QEEC_MIS_MIN);
  if (err)
   return err;
 }


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  err = mlxsw_sp_port_prio_tc_set(mlxsw_sp_port, i, 0);
  if (err)
   return err;
 }

 return 0;
}
