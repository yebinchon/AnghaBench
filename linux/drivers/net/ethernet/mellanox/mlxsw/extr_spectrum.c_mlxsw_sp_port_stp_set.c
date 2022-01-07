
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_spms_state { ____Placeholder_mlxsw_reg_spms_state } mlxsw_reg_spms_state ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SPMS_LEN ;
 int MLXSW_REG_SPMS_STATE_DISCARDING ;
 int MLXSW_REG_SPMS_STATE_FORWARDING ;
 scalar_t__ VLAN_N_VID ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int mlxsw_reg_spms_pack (char*,int ) ;
 int mlxsw_reg_spms_vid_pack (char*,scalar_t__,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int spms ;

__attribute__((used)) static int mlxsw_sp_port_stp_set(struct mlxsw_sp_port *mlxsw_sp_port,
     bool enable)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 enum mlxsw_reg_spms_state spms_state;
 char *spms_pl;
 u16 vid;
 int err;

 spms_state = enable ? MLXSW_REG_SPMS_STATE_FORWARDING :
         MLXSW_REG_SPMS_STATE_DISCARDING;

 spms_pl = kmalloc(MLXSW_REG_SPMS_LEN, GFP_KERNEL);
 if (!spms_pl)
  return -ENOMEM;
 mlxsw_reg_spms_pack(spms_pl, mlxsw_sp_port->local_port);

 for (vid = 0; vid < VLAN_N_VID; vid++)
  mlxsw_reg_spms_vid_pack(spms_pl, vid, spms_state);

 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(spms), spms_pl);
 kfree(spms_pl);
 return err;
}
