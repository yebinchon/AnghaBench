
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cmd; } ;
struct TYPE_6__ {TYPE_1__ ipsec_sa_v1; } ;
struct mlx5_fpga_ipsec_sa_ctx {int hash; TYPE_3__ hw_sa; TYPE_2__* dev; } ;
struct mlx5_fpga_ipsec {int sa_hash_lock; int sa_hash; } ;
struct mlx5_fpga_device {struct mlx5_fpga_ipsec* ipsec; } ;
struct TYPE_5__ {struct mlx5_fpga_device* fpga; } ;


 int MLX5_FPGA_IPSEC_CMD_OP_DEL_SA ;
 int MLX5_FPGA_IPSEC_CMD_OP_DEL_SA_V2 ;
 int WARN_ON (int) ;
 scalar_t__ is_v2_sadb_supported (struct mlx5_fpga_ipsec*) ;
 int mlx5_fpga_ipsec_update_hw_sa (struct mlx5_fpga_device*,TYPE_3__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rhash_sa ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void
mlx5_fpga_ipsec_release_sa_ctx(struct mlx5_fpga_ipsec_sa_ctx *sa_ctx)
{
 struct mlx5_fpga_device *fdev = sa_ctx->dev->fpga;
 struct mlx5_fpga_ipsec *fipsec = fdev->ipsec;
 int opcode = is_v2_sadb_supported(fdev->ipsec) ?
   MLX5_FPGA_IPSEC_CMD_OP_DEL_SA_V2 :
   MLX5_FPGA_IPSEC_CMD_OP_DEL_SA;
 int err;

 err = mlx5_fpga_ipsec_update_hw_sa(fdev, &sa_ctx->hw_sa, opcode);
 sa_ctx->hw_sa.ipsec_sa_v1.cmd = 0;
 if (err) {
  WARN_ON(err);
  return;
 }

 mutex_lock(&fipsec->sa_hash_lock);
 WARN_ON(rhashtable_remove_fast(&fipsec->sa_hash, &sa_ctx->hash,
           rhash_sa));
 mutex_unlock(&fipsec->sa_hash_lock);
}
