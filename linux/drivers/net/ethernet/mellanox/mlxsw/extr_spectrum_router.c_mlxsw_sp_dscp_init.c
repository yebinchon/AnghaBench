
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 unsigned int MLXSW_REG_RDPM_DSCP_ENTRY_REC_MAX_COUNT ;
 int MLXSW_REG_RDPM_LEN ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_rdpm_pack (char*,unsigned int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int rdpm ;
 int rt_tos2priority (unsigned int) ;

__attribute__((used)) static int mlxsw_sp_dscp_init(struct mlxsw_sp *mlxsw_sp)
{
 char rdpm_pl[MLXSW_REG_RDPM_LEN];
 unsigned int i;

 MLXSW_REG_ZERO(rdpm, rdpm_pl);






 for (i = 0; i < MLXSW_REG_RDPM_DSCP_ENTRY_REC_MAX_COUNT; i++)
  mlxsw_reg_rdpm_pack(rdpm_pl, i, rt_tos2priority(i << 2));

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rdpm), rdpm_pl);
}
