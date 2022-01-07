
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_async_ctx {int wait; int num_inflight; struct mlx5_core_dev* dev; } ;


 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;

void mlx5_cmd_init_async_ctx(struct mlx5_core_dev *dev,
        struct mlx5_async_ctx *ctx)
{
 ctx->dev = dev;

 atomic_set(&ctx->num_inflight, 1);
 init_waitqueue_head(&ctx->wait);
}
