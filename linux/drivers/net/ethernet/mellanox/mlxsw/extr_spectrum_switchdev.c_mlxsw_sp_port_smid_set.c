
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
 int MLXSW_REG_SMID_LEN ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int mlxsw_reg_smid_pack (char*,int ,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int smid ;

__attribute__((used)) static int mlxsw_sp_port_smid_set(struct mlxsw_sp_port *mlxsw_sp_port,
      u16 mid_idx, bool add)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char *smid_pl;
 int err;

 smid_pl = kmalloc(MLXSW_REG_SMID_LEN, GFP_KERNEL);
 if (!smid_pl)
  return -ENOMEM;

 mlxsw_reg_smid_pack(smid_pl, mid_idx, mlxsw_sp_port->local_port, add);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(smid), smid_pl);
 kfree(smid_pl);
 return err;
}
