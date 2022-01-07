
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_KVDL_ENTRY_TYPE_PBS ;
 int mlxsw_sp_kvdl_free (struct mlxsw_sp*,int ,int,int ) ;

__attribute__((used)) static void mlxsw_sp_act_kvdl_fwd_entry_del(void *priv, u32 kvdl_index)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 mlxsw_sp_kvdl_free(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_PBS,
      1, kvdl_index);
}
