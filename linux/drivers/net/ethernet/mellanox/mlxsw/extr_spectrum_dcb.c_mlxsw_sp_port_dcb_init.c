
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trust_state; } ;
struct mlxsw_sp_port {TYPE_2__* dev; TYPE_1__ dcb; } ;
struct TYPE_4__ {int * dcbnl_ops; } ;


 int MLXSW_REG_QPTS_TRUST_STATE_PCP ;
 int mlxsw_sp_dcbnl_ops ;
 int mlxsw_sp_port_ets_fini (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_ets_init (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_maxrate_fini (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_maxrate_init (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_pfc_init (struct mlxsw_sp_port*) ;

int mlxsw_sp_port_dcb_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 int err;

 err = mlxsw_sp_port_ets_init(mlxsw_sp_port);
 if (err)
  return err;
 err = mlxsw_sp_port_maxrate_init(mlxsw_sp_port);
 if (err)
  goto err_port_maxrate_init;
 err = mlxsw_sp_port_pfc_init(mlxsw_sp_port);
 if (err)
  goto err_port_pfc_init;

 mlxsw_sp_port->dcb.trust_state = MLXSW_REG_QPTS_TRUST_STATE_PCP;
 mlxsw_sp_port->dev->dcbnl_ops = &mlxsw_sp_dcbnl_ops;

 return 0;

err_port_pfc_init:
 mlxsw_sp_port_maxrate_fini(mlxsw_sp_port);
err_port_maxrate_init:
 mlxsw_sp_port_ets_fini(mlxsw_sp_port);
 return err;
}
