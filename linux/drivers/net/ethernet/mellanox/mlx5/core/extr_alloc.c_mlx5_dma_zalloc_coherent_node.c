
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_priv {int alloc_mutex; } ;
struct mlx5_core_dev {struct device* device; struct mlx5_priv priv; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int dev_to_node (struct device*) ;
 void* dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_dev_node (struct device*,int) ;

__attribute__((used)) static void *mlx5_dma_zalloc_coherent_node(struct mlx5_core_dev *dev,
        size_t size, dma_addr_t *dma_handle,
        int node)
{
 struct mlx5_priv *priv = &dev->priv;
 struct device *device = dev->device;
 int original_node;
 void *cpu_handle;

 mutex_lock(&priv->alloc_mutex);
 original_node = dev_to_node(device);
 set_dev_node(device, node);
 cpu_handle = dma_alloc_coherent(device, size, dma_handle,
     GFP_KERNEL);
 set_dev_node(device, original_node);
 mutex_unlock(&priv->alloc_mutex);
 return cpu_handle;
}
