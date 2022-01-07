
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int netdev; } ;
struct mlx5e_err_ctx {int (* recover ) (int *) ;int ctx; } ;
struct devlink_health_reporter {int dummy; } ;


 int devlink_health_report (struct devlink_health_reporter*,char*,struct mlx5e_err_ctx*) ;
 int netdev_err (int ,char*) ;
 int stub1 (int *) ;

int mlx5e_health_report(struct mlx5e_priv *priv,
   struct devlink_health_reporter *reporter, char *err_str,
   struct mlx5e_err_ctx *err_ctx)
{
 if (!reporter) {
  netdev_err(priv->netdev, err_str);
  return err_ctx->recover(&err_ctx->ctx);
 }
 return devlink_health_report(reporter, err_str, err_ctx);
}
