
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_REG_SFD_REC_ACTION_FORWARD_IP_ROUTER ;
 int MLXSW_REG_SFD_REC_POLICY_STATIC_ENTRY ;
 int __mlxsw_sp_port_fdb_uc_op (struct mlxsw_sp*,int ,char const*,int ,int,int ,int ) ;

int mlxsw_sp_rif_fdb_op(struct mlxsw_sp *mlxsw_sp, const char *mac, u16 fid,
   bool adding)
{
 return __mlxsw_sp_port_fdb_uc_op(mlxsw_sp, 0, mac, fid, adding,
      MLXSW_REG_SFD_REC_ACTION_FORWARD_IP_ROUTER,
      MLXSW_REG_SFD_REC_POLICY_STATIC_ENTRY);
}
