
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp {TYPE_1__* bridge; int core; } ;
struct TYPE_2__ {int ageing_time; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFDAT_LEN ;
 int mlxsw_reg_sfdat_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int sfdat ;

__attribute__((used)) static int mlxsw_sp_ageing_set(struct mlxsw_sp *mlxsw_sp, u32 ageing_time)
{
 char sfdat_pl[MLXSW_REG_SFDAT_LEN];
 int err;

 mlxsw_reg_sfdat_pack(sfdat_pl, ageing_time);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sfdat), sfdat_pl);
 if (err)
  return err;
 mlxsw_sp->bridge->ageing_time = ageing_time;
 return 0;
}
