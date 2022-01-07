
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_kvdl {int priv; TYPE_1__* kvdl_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_kvdl* kvdl; } ;
typedef enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;
struct TYPE_2__ {int (* free ) (struct mlxsw_sp*,int ,int,unsigned int,int) ;} ;


 int stub1 (struct mlxsw_sp*,int ,int,unsigned int,int) ;

void mlxsw_sp_kvdl_free(struct mlxsw_sp *mlxsw_sp,
   enum mlxsw_sp_kvdl_entry_type type,
   unsigned int entry_count, int entry_index)
{
 struct mlxsw_sp_kvdl *kvdl = mlxsw_sp->kvdl;

 kvdl->kvdl_ops->free(mlxsw_sp, kvdl->priv, type,
        entry_count, entry_index);
}
