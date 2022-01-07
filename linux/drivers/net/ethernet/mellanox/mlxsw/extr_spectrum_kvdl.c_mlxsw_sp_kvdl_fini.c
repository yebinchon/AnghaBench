
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_kvdl {int priv; TYPE_1__* kvdl_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_kvdl* kvdl; } ;
struct TYPE_2__ {int (* fini ) (struct mlxsw_sp*,int ) ;} ;


 int kfree (struct mlxsw_sp_kvdl*) ;
 int stub1 (struct mlxsw_sp*,int ) ;

void mlxsw_sp_kvdl_fini(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_kvdl *kvdl = mlxsw_sp->kvdl;

 kvdl->kvdl_ops->fini(mlxsw_sp, kvdl->priv);
 kfree(kvdl);
}
