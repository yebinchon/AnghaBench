
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_tcam_ops {int (* init ) (struct mlxsw_sp*,int ) ;int priv_size; } ;
struct mlxsw_sp_mr_tcam {int priv; } ;
struct mlxsw_sp {int core; struct mlxsw_sp_mr_tcam_ops* mr_tcam_ops; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MC_ERIF_LIST_ENTRIES ;
 int MLXSW_CORE_RES_VALID (int ,int ) ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 int stub1 (struct mlxsw_sp*,int ) ;

__attribute__((used)) static int mlxsw_sp_mr_tcam_init(struct mlxsw_sp *mlxsw_sp, void *priv)
{
 const struct mlxsw_sp_mr_tcam_ops *ops = mlxsw_sp->mr_tcam_ops;
 struct mlxsw_sp_mr_tcam *mr_tcam = priv;
 int err;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, MC_ERIF_LIST_ENTRIES))
  return -EIO;

 mr_tcam->priv = kzalloc(ops->priv_size, GFP_KERNEL);
 if (!mr_tcam->priv)
  return -ENOMEM;

 err = ops->init(mlxsw_sp, mr_tcam->priv);
 if (err)
  goto err_init;
 return 0;

err_init:
 kfree(mr_tcam->priv);
 return err;
}
