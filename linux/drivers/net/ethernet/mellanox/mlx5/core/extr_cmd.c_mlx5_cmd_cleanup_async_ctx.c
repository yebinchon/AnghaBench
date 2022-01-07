
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_async_ctx {int num_inflight; int wait; } ;


 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int wait_event (int ,int) ;

void mlx5_cmd_cleanup_async_ctx(struct mlx5_async_ctx *ctx)
{
 atomic_dec(&ctx->num_inflight);
 wait_event(ctx->wait, atomic_read(&ctx->num_inflight) == 0);
}
