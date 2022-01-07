
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_sq_dma {int type; int size; int addr; } ;
struct device {int dummy; } ;


 int DMA_TO_DEVICE ;


 int WARN_ONCE (int,char*) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;

__attribute__((used)) static inline void
mlx5e_tx_dma_unmap(struct device *pdev, struct mlx5e_sq_dma *dma)
{
 switch (dma->type) {
 case 128:
  dma_unmap_single(pdev, dma->addr, dma->size, DMA_TO_DEVICE);
  break;
 case 129:
  dma_unmap_page(pdev, dma->addr, dma->size, DMA_TO_DEVICE);
  break;
 default:
  WARN_ONCE(1, "mlx5e_tx_dma_unmap unknown DMA type!\n");
 }
}
