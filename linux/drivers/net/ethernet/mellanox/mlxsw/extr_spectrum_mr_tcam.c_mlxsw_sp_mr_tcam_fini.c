
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_tcam_ops {int (* fini ) (int ) ;} ;
struct mlxsw_sp_mr_tcam {int priv; } ;
struct mlxsw_sp {struct mlxsw_sp_mr_tcam_ops* mr_tcam_ops; } ;


 int kfree (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void mlxsw_sp_mr_tcam_fini(struct mlxsw_sp *mlxsw_sp, void *priv)
{
 const struct mlxsw_sp_mr_tcam_ops *ops = mlxsw_sp->mr_tcam_ops;
 struct mlxsw_sp_mr_tcam *mr_tcam = priv;

 ops->fini(mr_tcam->priv);
 kfree(mr_tcam->priv);
}
