
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_async_work {int (* user_callback ) (int,struct mlx5_async_work*) ;struct mlx5_async_ctx* ctx; } ;
struct mlx5_async_ctx {int wait; int num_inflight; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int stub1 (int,struct mlx5_async_work*) ;
 int wake_up (int *) ;

__attribute__((used)) static void mlx5_cmd_exec_cb_handler(int status, void *_work)
{
 struct mlx5_async_work *work = _work;
 struct mlx5_async_ctx *ctx = work->ctx;

 work->user_callback(status, work);
 if (atomic_dec_and_test(&ctx->num_inflight))
  wake_up(&ctx->wait);
}
