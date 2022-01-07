
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct xdp_umem {size_t npgs; TYPE_1__* pages; int * pgs; } ;
struct mlx5e_priv {TYPE_2__* mdev; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {struct device* device; } ;
struct TYPE_3__ {scalar_t__ dma; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int PAGE_SIZE ;
 scalar_t__ dma_map_page (struct device*,int ,int ,int ,int ) ;
 int dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_page (struct device*,scalar_t__,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int mlx5e_xsk_map_umem(struct mlx5e_priv *priv,
         struct xdp_umem *umem)
{
 struct device *dev = priv->mdev->device;
 u32 i;

 for (i = 0; i < umem->npgs; i++) {
  dma_addr_t dma = dma_map_page(dev, umem->pgs[i], 0, PAGE_SIZE,
           DMA_BIDIRECTIONAL);

  if (unlikely(dma_mapping_error(dev, dma)))
   goto err_unmap;
  umem->pages[i].dma = dma;
 }

 return 0;

err_unmap:
 while (i--) {
  dma_unmap_page(dev, umem->pages[i].dma, PAGE_SIZE,
          DMA_BIDIRECTIONAL);
  umem->pages[i].dma = 0;
 }

 return -ENOMEM;
}
