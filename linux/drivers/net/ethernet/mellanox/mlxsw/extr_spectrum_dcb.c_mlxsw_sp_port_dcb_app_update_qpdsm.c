
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct dcb_ieee_app_prio_map {int * map; } ;


 short ARRAY_SIZE (int *) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_QPDSM_LEN ;
 int mlxsw_reg_qpdsm_pack (char*,int ) ;
 int mlxsw_reg_qpdsm_prio_pack (char*,short,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int qpdsm ;

__attribute__((used)) static int
mlxsw_sp_port_dcb_app_update_qpdsm(struct mlxsw_sp_port *mlxsw_sp_port,
       struct dcb_ieee_app_prio_map *map)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char qpdsm_pl[MLXSW_REG_QPDSM_LEN];
 short int i;

 mlxsw_reg_qpdsm_pack(qpdsm_pl, mlxsw_sp_port->local_port);
 for (i = 0; i < ARRAY_SIZE(map->map); ++i)
  mlxsw_reg_qpdsm_prio_pack(qpdsm_pl, i, map->map[i]);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(qpdsm), qpdsm_pl);
}
