
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd {int pool; int wq; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;


 int clean_debug_files (struct mlx5_core_dev*) ;
 int destroy_msg_cache (struct mlx5_core_dev*) ;
 int destroy_workqueue (int ) ;
 int dma_pool_destroy (int ) ;
 int free_cmd_page (struct mlx5_core_dev*,struct mlx5_cmd*) ;

void mlx5_cmd_cleanup(struct mlx5_core_dev *dev)
{
 struct mlx5_cmd *cmd = &dev->cmd;

 clean_debug_files(dev);
 destroy_workqueue(cmd->wq);
 destroy_msg_cache(dev);
 free_cmd_page(dev, cmd);
 dma_pool_destroy(cmd->pool);
}
