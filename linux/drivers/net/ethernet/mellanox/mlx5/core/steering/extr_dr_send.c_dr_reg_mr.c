
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5dr_mr {size_t size; void* addr; int dma_addr; int mkey; } ;
struct mlx5_core_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_BIDIRECTIONAL ;
 int GFP_KERNEL ;
 int dma_map_single (struct device*,void*,size_t,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int dma_unmap_single (struct device*,int ,size_t,int ) ;
 int dr_create_mkey (struct mlx5_core_dev*,int ,int *) ;
 int kfree (struct mlx5dr_mr*) ;
 struct mlx5dr_mr* kzalloc (int,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;

__attribute__((used)) static struct mlx5dr_mr *dr_reg_mr(struct mlx5_core_dev *mdev,
       u32 pdn, void *buf, size_t size)
{
 struct mlx5dr_mr *mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 struct device *dma_device;
 dma_addr_t dma_addr;
 int err;

 if (!mr)
  return ((void*)0);

 dma_device = &mdev->pdev->dev;
 dma_addr = dma_map_single(dma_device, buf, size,
      DMA_BIDIRECTIONAL);
 err = dma_mapping_error(dma_device, dma_addr);
 if (err) {
  mlx5_core_warn(mdev, "Can't dma buf\n");
  kfree(mr);
  return ((void*)0);
 }

 err = dr_create_mkey(mdev, pdn, &mr->mkey);
 if (err) {
  mlx5_core_warn(mdev, "Can't create mkey\n");
  dma_unmap_single(dma_device, dma_addr, size,
     DMA_BIDIRECTIONAL);
  kfree(mr);
  return ((void*)0);
 }

 mr->dma_addr = dma_addr;
 mr->size = size;
 mr->addr = buf;

 return mr;
}
