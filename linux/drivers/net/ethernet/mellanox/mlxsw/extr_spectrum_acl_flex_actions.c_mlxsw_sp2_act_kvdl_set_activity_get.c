
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PEFA_LEN ;
 int mlxsw_reg_pefa_pack (char*,int ,int,int *) ;
 int mlxsw_reg_pefa_unpack (char*,int*) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int pefa ;

__attribute__((used)) static int mlxsw_sp2_act_kvdl_set_activity_get(void *priv, u32 kvdl_index,
            bool *activity)
{
 struct mlxsw_sp *mlxsw_sp = priv;
 char pefa_pl[MLXSW_REG_PEFA_LEN];
 int err;

 mlxsw_reg_pefa_pack(pefa_pl, kvdl_index, 1, ((void*)0));
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(pefa), pefa_pl);
 if (err)
  return err;
 mlxsw_reg_pefa_unpack(pefa_pl, activity);
 return 0;
}
