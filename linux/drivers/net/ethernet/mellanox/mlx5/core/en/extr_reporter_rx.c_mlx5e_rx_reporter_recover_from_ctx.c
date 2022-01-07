
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_err_ctx {int (* recover ) (int ) ;int ctx; } ;


 int stub1 (int ) ;

__attribute__((used)) static int mlx5e_rx_reporter_recover_from_ctx(struct mlx5e_err_ctx *err_ctx)
{
 return err_ctx->recover(err_ctx->ctx);
}
