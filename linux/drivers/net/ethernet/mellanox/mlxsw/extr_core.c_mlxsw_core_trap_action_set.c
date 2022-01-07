
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_listener {int is_ctrl; int trap_group; int trap_id; } ;
struct mlxsw_core {int dummy; } ;
typedef enum mlxsw_reg_hpkt_action { ____Placeholder_mlxsw_reg_hpkt_action } mlxsw_reg_hpkt_action ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_HPKT_LEN ;
 int hpkt ;
 int mlxsw_reg_hpkt_pack (char*,int,int ,int ,int ) ;
 int mlxsw_reg_write (struct mlxsw_core*,int ,char*) ;

int mlxsw_core_trap_action_set(struct mlxsw_core *mlxsw_core,
          const struct mlxsw_listener *listener,
          enum mlxsw_reg_hpkt_action action)
{
 char hpkt_pl[MLXSW_REG_HPKT_LEN];

 mlxsw_reg_hpkt_pack(hpkt_pl, action, listener->trap_id,
       listener->trap_group, listener->is_ctrl);
 return mlxsw_reg_write(mlxsw_core, MLXSW_REG(hpkt), hpkt_pl);
}
