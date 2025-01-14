
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_kvdl_part {int dummy; } ;
struct mlxsw_sp1_kvdl {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;


 scalar_t__ IS_ERR (struct mlxsw_sp1_kvdl_part*) ;
 struct mlxsw_sp1_kvdl_part* mlxsw_sp1_kvdl_index_part (struct mlxsw_sp1_kvdl*,int) ;
 int mlxsw_sp1_kvdl_part_free (struct mlxsw_sp1_kvdl_part*,int) ;

__attribute__((used)) static void mlxsw_sp1_kvdl_free(struct mlxsw_sp *mlxsw_sp, void *priv,
    enum mlxsw_sp_kvdl_entry_type type,
    unsigned int entry_count, int entry_index)
{
 struct mlxsw_sp1_kvdl *kvdl = priv;
 struct mlxsw_sp1_kvdl_part *part;

 part = mlxsw_sp1_kvdl_index_part(kvdl, entry_index);
 if (IS_ERR(part))
  return;
 mlxsw_sp1_kvdl_part_free(part, entry_index);
}
