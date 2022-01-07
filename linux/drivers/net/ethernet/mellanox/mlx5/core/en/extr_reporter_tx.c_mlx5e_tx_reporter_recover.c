
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_err_ctx {int dummy; } ;
struct devlink_health_reporter {int dummy; } ;


 struct mlx5e_priv* devlink_health_reporter_priv (struct devlink_health_reporter*) ;
 int mlx5e_health_recover_channels (struct mlx5e_priv*) ;
 int mlx5e_tx_reporter_recover_from_ctx (struct mlx5e_err_ctx*) ;

__attribute__((used)) static int mlx5e_tx_reporter_recover(struct devlink_health_reporter *reporter,
         void *context)
{
 struct mlx5e_priv *priv = devlink_health_reporter_priv(reporter);
 struct mlx5e_err_ctx *err_ctx = context;

 return err_ctx ? mlx5e_tx_reporter_recover_from_ctx(err_ctx) :
    mlx5e_health_recover_channels(priv);
}
