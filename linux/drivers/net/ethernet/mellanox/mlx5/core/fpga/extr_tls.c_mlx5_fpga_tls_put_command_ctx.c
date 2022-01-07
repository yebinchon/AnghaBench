
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_tls_command_context {int ref; } ;


 int kfree (struct mlx5_fpga_tls_command_context*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void
mlx5_fpga_tls_put_command_ctx(struct mlx5_fpga_tls_command_context *ctx)
{
 if (refcount_dec_and_test(&ctx->ref))
  kfree(ctx);
}
