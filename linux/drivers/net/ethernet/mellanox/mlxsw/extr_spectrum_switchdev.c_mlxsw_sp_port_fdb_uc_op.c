
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_REG_SFD_REC_ACTION_NOP ;
 int __mlxsw_sp_port_fdb_uc_op (struct mlxsw_sp*,int ,char const*,int ,int,int ,int ) ;
 int mlxsw_sp_sfd_rec_policy (int) ;

__attribute__((used)) static int mlxsw_sp_port_fdb_uc_op(struct mlxsw_sp *mlxsw_sp, u8 local_port,
       const char *mac, u16 fid, bool adding,
       bool dynamic)
{
 return __mlxsw_sp_port_fdb_uc_op(mlxsw_sp, local_port, mac, fid, adding,
      MLXSW_REG_SFD_REC_ACTION_NOP,
      mlxsw_sp_sfd_rec_policy(dynamic));
}
