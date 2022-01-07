
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int free_list; int page_root; } ;
struct mlx5_core_dev {TYPE_1__ priv; int device; } ;
struct fw_page {int free_count; int list; int page; int rb_node; int bitmask; } ;


 int DMA_BIDIRECTIONAL ;
 int MLX5_ADAPTER_PAGE_SHIFT ;
 int MLX5_NUM_4K_IN_PAGE ;
 int MLX5_U64_4K_PAGE_MASK ;
 int PAGE_SIZE ;
 int __free_page (int ) ;
 int dma_unmap_page (int ,int,int ,int ) ;
 struct fw_page* find_fw_page (struct mlx5_core_dev*,int) ;
 int kfree (struct fw_page*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int rb_erase (int *,int *) ;
 int set_bit (int,int *) ;

__attribute__((used)) static void free_4k(struct mlx5_core_dev *dev, u64 addr)
{
 struct fw_page *fwp;
 int n;

 fwp = find_fw_page(dev, addr & MLX5_U64_4K_PAGE_MASK);
 if (!fwp) {
  mlx5_core_warn(dev, "page not found\n");
  return;
 }

 n = (addr & ~MLX5_U64_4K_PAGE_MASK) >> MLX5_ADAPTER_PAGE_SHIFT;
 fwp->free_count++;
 set_bit(n, &fwp->bitmask);
 if (fwp->free_count == MLX5_NUM_4K_IN_PAGE) {
  rb_erase(&fwp->rb_node, &dev->priv.page_root);
  if (fwp->free_count != 1)
   list_del(&fwp->list);
  dma_unmap_page(dev->device, addr & MLX5_U64_4K_PAGE_MASK,
          PAGE_SIZE, DMA_BIDIRECTIONAL);
  __free_page(fwp->page);
  kfree(fwp);
 } else if (fwp->free_count == 1) {
  list_add(&fwp->list, &dev->priv.free_list);
 }
}
