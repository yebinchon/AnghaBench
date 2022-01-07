
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_kvdl_ops {int (* init ) (struct mlxsw_sp*,int ) ;scalar_t__ priv_size; } ;
struct mlxsw_sp_kvdl {int priv; struct mlxsw_sp_kvdl_ops const* kvdl_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_kvdl* kvdl; struct mlxsw_sp_kvdl_ops* kvdl_ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct mlxsw_sp_kvdl*) ;
 struct mlxsw_sp_kvdl* kzalloc (scalar_t__,int ) ;
 int stub1 (struct mlxsw_sp*,int ) ;

int mlxsw_sp_kvdl_init(struct mlxsw_sp *mlxsw_sp)
{
 const struct mlxsw_sp_kvdl_ops *kvdl_ops = mlxsw_sp->kvdl_ops;
 struct mlxsw_sp_kvdl *kvdl;
 int err;

 kvdl = kzalloc(sizeof(*mlxsw_sp->kvdl) + kvdl_ops->priv_size,
         GFP_KERNEL);
 if (!kvdl)
  return -ENOMEM;
 kvdl->kvdl_ops = kvdl_ops;
 mlxsw_sp->kvdl = kvdl;

 err = kvdl_ops->init(mlxsw_sp, kvdl->priv);
 if (err)
  goto err_init;
 return 0;

err_init:
 kfree(kvdl);
 return err;
}
