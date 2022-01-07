
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct xdp_umem {size_t npgs; TYPE_2__* pages; } ;
struct mlx5e_priv {TYPE_1__* mdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct TYPE_3__ {struct device* device; } ;


 int DMA_BIDIRECTIONAL ;
 int PAGE_SIZE ;
 int dma_unmap_page (struct device*,scalar_t__,int ,int ) ;

__attribute__((used)) static void mlx5e_xsk_unmap_umem(struct mlx5e_priv *priv,
     struct xdp_umem *umem)
{
 struct device *dev = priv->mdev->device;
 u32 i;

 for (i = 0; i < umem->npgs; i++) {
  dma_unmap_page(dev, umem->pages[i].dma, PAGE_SIZE,
          DMA_BIDIRECTIONAL);
  umem->pages[i].dma = 0;
 }
}
