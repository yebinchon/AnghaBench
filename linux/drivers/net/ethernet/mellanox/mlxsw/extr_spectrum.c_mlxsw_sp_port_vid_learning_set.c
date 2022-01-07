
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SPVMLR_LEN ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int mlxsw_reg_spvmlr_pack (char*,int ,int ,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int spvmlr ;

int mlxsw_sp_port_vid_learning_set(struct mlxsw_sp_port *mlxsw_sp_port, u16 vid,
       bool learn_enable)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char *spvmlr_pl;
 int err;

 spvmlr_pl = kmalloc(MLXSW_REG_SPVMLR_LEN, GFP_KERNEL);
 if (!spvmlr_pl)
  return -ENOMEM;
 mlxsw_reg_spvmlr_pack(spvmlr_pl, mlxsw_sp_port->local_port, vid, vid,
         learn_enable);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(spvmlr), spvmlr_pl);
 kfree(spvmlr_pl);
 return err;
}
