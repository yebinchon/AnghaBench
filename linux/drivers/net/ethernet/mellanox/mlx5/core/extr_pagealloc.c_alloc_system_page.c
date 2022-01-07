
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct page {int dummy; } ;
struct mlx5_core_dev {struct device* device; } ;
struct device {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_HIGHUSER ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* alloc_pages_node (int,int ,int ) ;
 int dev_to_node (struct device*) ;
 scalar_t__ dma_map_page (struct device*,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_page (struct device*,scalar_t__,int ,int ) ;
 int insert_page (struct mlx5_core_dev*,scalar_t__,struct page*,int ) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;

__attribute__((used)) static int alloc_system_page(struct mlx5_core_dev *dev, u16 func_id)
{
 struct device *device = dev->device;
 int nid = dev_to_node(device);
 struct page *page;
 u64 zero_addr = 1;
 u64 addr;
 int err;

 page = alloc_pages_node(nid, GFP_HIGHUSER, 0);
 if (!page) {
  mlx5_core_warn(dev, "failed to allocate page\n");
  return -ENOMEM;
 }
map:
 addr = dma_map_page(device, page, 0, PAGE_SIZE, DMA_BIDIRECTIONAL);
 if (dma_mapping_error(device, addr)) {
  mlx5_core_warn(dev, "failed dma mapping page\n");
  err = -ENOMEM;
  goto err_mapping;
 }


 if (addr == 0) {
  zero_addr = addr;
  goto map;
 }

 err = insert_page(dev, addr, page, func_id);
 if (err) {
  mlx5_core_err(dev, "failed to track allocated page\n");
  dma_unmap_page(device, addr, PAGE_SIZE, DMA_BIDIRECTIONAL);
 }

err_mapping:
 if (err)
  __free_page(page);

 if (zero_addr == 0)
  dma_unmap_page(device, zero_addr, PAGE_SIZE,
          DMA_BIDIRECTIONAL);

 return err;
}
