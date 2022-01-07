
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ initialized; int * hcr; int * pool; } ;
struct TYPE_7__ {int * vhcr; int vhcr_dma; } ;
struct mlx4_priv {TYPE_4__ cmd; TYPE_3__ mfunc; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int MLX4_CMD_CLEANUP_HCR ;
 int MLX4_CMD_CLEANUP_POOL ;
 int MLX4_CMD_CLEANUP_STRUCT ;
 int MLX4_CMD_CLEANUP_VHCR ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int dma_pool_destroy (int *) ;
 int iounmap (int *) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

void mlx4_cmd_cleanup(struct mlx4_dev *dev, int cleanup_mask)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 if (priv->cmd.pool && (cleanup_mask & MLX4_CMD_CLEANUP_POOL)) {
  dma_pool_destroy(priv->cmd.pool);
  priv->cmd.pool = ((void*)0);
 }

 if (!mlx4_is_slave(dev) && priv->cmd.hcr &&
     (cleanup_mask & MLX4_CMD_CLEANUP_HCR)) {
  iounmap(priv->cmd.hcr);
  priv->cmd.hcr = ((void*)0);
 }
 if (mlx4_is_mfunc(dev) && priv->mfunc.vhcr &&
     (cleanup_mask & MLX4_CMD_CLEANUP_VHCR)) {
  dma_free_coherent(&dev->persist->pdev->dev, PAGE_SIZE,
      priv->mfunc.vhcr, priv->mfunc.vhcr_dma);
  priv->mfunc.vhcr = ((void*)0);
 }
 if (priv->cmd.initialized && (cleanup_mask & MLX4_CMD_CLEANUP_STRUCT))
  priv->cmd.initialized = 0;
}
