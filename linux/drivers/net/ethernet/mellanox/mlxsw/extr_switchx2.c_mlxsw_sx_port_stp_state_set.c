
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;
typedef enum mlxsw_reg_spms_state { ____Placeholder_mlxsw_reg_spms_state } mlxsw_reg_spms_state ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SPMS_LEN ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int mlxsw_reg_spms_pack (char*,int ) ;
 int mlxsw_reg_spms_vid_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int spms ;

__attribute__((used)) static int mlxsw_sx_port_stp_state_set(struct mlxsw_sx_port *mlxsw_sx_port,
           u16 vid, enum mlxsw_reg_spms_state state)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char *spms_pl;
 int err;

 spms_pl = kmalloc(MLXSW_REG_SPMS_LEN, GFP_KERNEL);
 if (!spms_pl)
  return -ENOMEM;
 mlxsw_reg_spms_pack(spms_pl, mlxsw_sx_port->local_port);
 mlxsw_reg_spms_vid_pack(spms_pl, vid, state);
 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(spms), spms_pl);
 kfree(spms_pl);
 return err;
}
