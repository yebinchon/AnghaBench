
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_async_work {int user_callback; struct mlx5_async_ctx* ctx; } ;
struct mlx5_async_ctx {int wait; int num_inflight; int dev; } ;
typedef int mlx5_async_cbk_t ;


 int EIO ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc_not_zero (int *) ;
 int cmd_exec (int ,void*,int,void*,int,int ,struct mlx5_async_work*,int) ;
 int mlx5_cmd_exec_cb_handler ;
 int wake_up (int *) ;

int mlx5_cmd_exec_cb(struct mlx5_async_ctx *ctx, void *in, int in_size,
       void *out, int out_size, mlx5_async_cbk_t callback,
       struct mlx5_async_work *work)
{
 int ret;

 work->ctx = ctx;
 work->user_callback = callback;
 if (WARN_ON(!atomic_inc_not_zero(&ctx->num_inflight)))
  return -EIO;
 ret = cmd_exec(ctx->dev, in, in_size, out, out_size,
         mlx5_cmd_exec_cb_handler, work, 0);
 if (ret && atomic_dec_and_test(&ctx->num_inflight))
  wake_up(&ctx->wait);

 return ret;
}
