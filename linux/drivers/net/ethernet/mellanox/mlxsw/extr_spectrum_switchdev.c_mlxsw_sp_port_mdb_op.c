
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFD_LEN ;
 int MLXSW_REG_SFD_REC_ACTION_NOP ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int mlxsw_reg_sfd_mc_pack (char*,int ,char const*,int ,int ,int ) ;
 scalar_t__ mlxsw_reg_sfd_num_rec_get (char*) ;
 int mlxsw_reg_sfd_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_sfd_op (int) ;
 int sfd ;

__attribute__((used)) static int mlxsw_sp_port_mdb_op(struct mlxsw_sp *mlxsw_sp, const char *addr,
    u16 fid, u16 mid_idx, bool adding)
{
 char *sfd_pl;
 u8 num_rec;
 int err;

 sfd_pl = kmalloc(MLXSW_REG_SFD_LEN, GFP_KERNEL);
 if (!sfd_pl)
  return -ENOMEM;

 mlxsw_reg_sfd_pack(sfd_pl, mlxsw_sp_sfd_op(adding), 0);
 mlxsw_reg_sfd_mc_pack(sfd_pl, 0, addr, fid,
         MLXSW_REG_SFD_REC_ACTION_NOP, mid_idx);
 num_rec = mlxsw_reg_sfd_num_rec_get(sfd_pl);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sfd), sfd_pl);
 if (err)
  goto out;

 if (num_rec != mlxsw_reg_sfd_num_rec_get(sfd_pl))
  err = -EBUSY;

out:
 kfree(sfd_pl);
 return err;
}
