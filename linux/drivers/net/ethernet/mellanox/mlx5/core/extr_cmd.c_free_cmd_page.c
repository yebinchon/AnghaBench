
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {struct device* device; } ;
struct mlx5_cmd {int alloc_dma; int cmd_alloc_buf; int alloc_size; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int ,int ,int ) ;

__attribute__((used)) static void free_cmd_page(struct mlx5_core_dev *dev, struct mlx5_cmd *cmd)
{
 struct device *ddev = dev->device;

 dma_free_coherent(ddev, cmd->alloc_size, cmd->cmd_alloc_buf,
     cmd->alloc_dma);
}
