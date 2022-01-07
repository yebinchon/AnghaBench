
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PEFA_LEN ;
 int MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET ;
 int mlxsw_reg_pefa_pack (char*,int ,int,char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_kvdl_alloc (struct mlxsw_sp*,int ,int,int *) ;
 int mlxsw_sp_kvdl_free (struct mlxsw_sp*,int ,int,int ) ;
 int pefa ;

__attribute__((used)) static int mlxsw_sp_act_kvdl_set_add(void *priv, u32 *p_kvdl_index,
         char *enc_actions, bool is_first, bool ca)
{
 struct mlxsw_sp *mlxsw_sp = priv;
 char pefa_pl[MLXSW_REG_PEFA_LEN];
 u32 kvdl_index;
 int err;




 if (is_first)
  return 0;

 err = mlxsw_sp_kvdl_alloc(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET,
      1, &kvdl_index);
 if (err)
  return err;
 mlxsw_reg_pefa_pack(pefa_pl, kvdl_index, ca, enc_actions);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pefa), pefa_pl);
 if (err)
  goto err_pefa_write;
 *p_kvdl_index = kvdl_index;
 return 0;

err_pefa_write:
 mlxsw_sp_kvdl_free(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET,
      1, kvdl_index);
 return err;
}
