
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_CWTPM_LEN ;
 int MLXSW_REG_CWTP_DEFAULT_PROFILE ;
 int MLXSW_REG_CWTP_LEN ;
 int MLXSW_REG_CWTP_MIN_VALUE ;
 int cwtp ;
 int cwtpm ;
 int mlxsw_reg_cwtp_pack (char*,int ,int) ;
 int mlxsw_reg_cwtp_profile_pack (char*,int ,int ,int ,int ) ;
 int mlxsw_reg_cwtpm_pack (char*,int ,int,int ,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int roundup (int ,int ) ;

__attribute__((used)) static int
mlxsw_sp_tclass_congestion_enable(struct mlxsw_sp_port *mlxsw_sp_port,
      int tclass_num, u32 min, u32 max,
      u32 probability, bool is_ecn)
{
 char cwtpm_cmd[MLXSW_REG_CWTPM_LEN];
 char cwtp_cmd[MLXSW_REG_CWTP_LEN];
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 int err;

 mlxsw_reg_cwtp_pack(cwtp_cmd, mlxsw_sp_port->local_port, tclass_num);
 mlxsw_reg_cwtp_profile_pack(cwtp_cmd, MLXSW_REG_CWTP_DEFAULT_PROFILE,
        roundup(min, MLXSW_REG_CWTP_MIN_VALUE),
        roundup(max, MLXSW_REG_CWTP_MIN_VALUE),
        probability);

 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(cwtp), cwtp_cmd);
 if (err)
  return err;

 mlxsw_reg_cwtpm_pack(cwtpm_cmd, mlxsw_sp_port->local_port, tclass_num,
        MLXSW_REG_CWTP_DEFAULT_PROFILE, 1, is_ecn);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(cwtpm), cwtpm_cmd);
}
