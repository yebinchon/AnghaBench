
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_kvdl {int priv; TYPE_1__* kvdl_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_kvdl* kvdl; } ;
typedef enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;
struct TYPE_2__ {int (* alloc ) (struct mlxsw_sp*,int ,int,unsigned int,int *) ;} ;


 int stub1 (struct mlxsw_sp*,int ,int,unsigned int,int *) ;

int mlxsw_sp_kvdl_alloc(struct mlxsw_sp *mlxsw_sp,
   enum mlxsw_sp_kvdl_entry_type type,
   unsigned int entry_count, u32 *p_entry_index)
{
 struct mlxsw_sp_kvdl *kvdl = mlxsw_sp->kvdl;

 return kvdl->kvdl_ops->alloc(mlxsw_sp, kvdl->priv, type,
         entry_count, p_entry_index);
}
