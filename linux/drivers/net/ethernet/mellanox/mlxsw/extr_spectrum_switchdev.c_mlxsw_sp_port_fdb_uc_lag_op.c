
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
 scalar_t__ mlxsw_reg_sfd_num_rec_get (char*) ;
 int mlxsw_reg_sfd_pack (char*,int ,int ) ;
 int mlxsw_reg_sfd_uc_lag_pack (char*,int ,int ,char const*,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_sfd_op (int) ;
 int mlxsw_sp_sfd_rec_policy (int) ;
 int sfd ;

__attribute__((used)) static int mlxsw_sp_port_fdb_uc_lag_op(struct mlxsw_sp *mlxsw_sp, u16 lag_id,
           const char *mac, u16 fid, u16 lag_vid,
           bool adding, bool dynamic)
{
 char *sfd_pl;
 u8 num_rec;
 int err;

 sfd_pl = kmalloc(MLXSW_REG_SFD_LEN, GFP_KERNEL);
 if (!sfd_pl)
  return -ENOMEM;

 mlxsw_reg_sfd_pack(sfd_pl, mlxsw_sp_sfd_op(adding), 0);
 mlxsw_reg_sfd_uc_lag_pack(sfd_pl, 0, mlxsw_sp_sfd_rec_policy(dynamic),
      mac, fid, MLXSW_REG_SFD_REC_ACTION_NOP,
      lag_vid, lag_id);
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
