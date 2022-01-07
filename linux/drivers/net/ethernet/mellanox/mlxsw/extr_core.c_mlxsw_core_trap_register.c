
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_listener {int is_ctrl; int trap_group; int trap_id; int action; } ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_HPKT_LEN ;
 int hpkt ;
 int mlxsw_core_listener_register (struct mlxsw_core*,struct mlxsw_listener const*,void*) ;
 int mlxsw_core_listener_unregister (struct mlxsw_core*,struct mlxsw_listener const*,void*) ;
 int mlxsw_reg_hpkt_pack (char*,int ,int ,int ,int ) ;
 int mlxsw_reg_write (struct mlxsw_core*,int ,char*) ;

int mlxsw_core_trap_register(struct mlxsw_core *mlxsw_core,
        const struct mlxsw_listener *listener, void *priv)
{
 char hpkt_pl[MLXSW_REG_HPKT_LEN];
 int err;

 err = mlxsw_core_listener_register(mlxsw_core, listener, priv);
 if (err)
  return err;

 mlxsw_reg_hpkt_pack(hpkt_pl, listener->action, listener->trap_id,
       listener->trap_group, listener->is_ctrl);
 err = mlxsw_reg_write(mlxsw_core, MLXSW_REG(hpkt), hpkt_pl);
 if (err)
  goto err_trap_set;

 return 0;

err_trap_set:
 mlxsw_core_listener_unregister(mlxsw_core, listener, priv);
 return err;
}
