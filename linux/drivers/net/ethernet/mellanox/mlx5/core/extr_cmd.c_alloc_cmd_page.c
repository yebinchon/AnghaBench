
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {struct device* device; } ;
struct mlx5_cmd {int alloc_size; int alloc_dma; int dma; void* cmd_alloc_buf; void* cmd_buf; } ;
struct device {int dummy; } ;


 int ALIGN (int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ADAPTER_PAGE_SIZE ;
 void* PTR_ALIGN (void*,int) ;
 void* dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_free_coherent (struct device*,int,void*,int ) ;

__attribute__((used)) static int alloc_cmd_page(struct mlx5_core_dev *dev, struct mlx5_cmd *cmd)
{
 struct device *ddev = dev->device;

 cmd->cmd_alloc_buf = dma_alloc_coherent(ddev, MLX5_ADAPTER_PAGE_SIZE,
      &cmd->alloc_dma, GFP_KERNEL);
 if (!cmd->cmd_alloc_buf)
  return -ENOMEM;


 if (!((uintptr_t)cmd->cmd_alloc_buf & (MLX5_ADAPTER_PAGE_SIZE - 1))) {
  cmd->cmd_buf = cmd->cmd_alloc_buf;
  cmd->dma = cmd->alloc_dma;
  cmd->alloc_size = MLX5_ADAPTER_PAGE_SIZE;
  return 0;
 }

 dma_free_coherent(ddev, MLX5_ADAPTER_PAGE_SIZE, cmd->cmd_alloc_buf,
     cmd->alloc_dma);
 cmd->cmd_alloc_buf = dma_alloc_coherent(ddev,
      2 * MLX5_ADAPTER_PAGE_SIZE - 1,
      &cmd->alloc_dma, GFP_KERNEL);
 if (!cmd->cmd_alloc_buf)
  return -ENOMEM;

 cmd->cmd_buf = PTR_ALIGN(cmd->cmd_alloc_buf, MLX5_ADAPTER_PAGE_SIZE);
 cmd->dma = ALIGN(cmd->alloc_dma, MLX5_ADAPTER_PAGE_SIZE);
 cmd->alloc_size = 2 * MLX5_ADAPTER_PAGE_SIZE - 1;
 return 0;
}
