
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
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
 int mlxsw_sp_stp_spms_state (int ) ;
 int spms ;

int mlxsw_sp_port_vid_stp_set(struct mlxsw_sp_port *mlxsw_sp_port, u16 vid,
         u8 state)
{
 enum mlxsw_reg_spms_state spms_state = mlxsw_sp_stp_spms_state(state);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char *spms_pl;
 int err;

 spms_pl = kmalloc(MLXSW_REG_SPMS_LEN, GFP_KERNEL);
 if (!spms_pl)
  return -ENOMEM;
 mlxsw_reg_spms_pack(spms_pl, mlxsw_sp_port->local_port);
 mlxsw_reg_spms_vid_pack(spms_pl, vid, spms_state);

 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(spms), spms_pl);
 kfree(spms_pl);
 return err;
}
