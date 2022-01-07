
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_bdr {size_t bd_count; int bd_dma_base; int bd_base; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ALIGNED (int ,int) ;
 int dma_alloc_coherent (int ,size_t,int *,int ) ;
 int dma_free_coherent (int ,size_t,int ,int ) ;

__attribute__((used)) static int enetc_dma_alloc_bdr(struct enetc_bdr *r, size_t bd_size)
{
 r->bd_base = dma_alloc_coherent(r->dev, r->bd_count * bd_size,
     &r->bd_dma_base, GFP_KERNEL);
 if (!r->bd_base)
  return -ENOMEM;


 if (!IS_ALIGNED(r->bd_dma_base, 128)) {
  dma_free_coherent(r->dev, r->bd_count * bd_size, r->bd_base,
      r->bd_dma_base);
  return -EINVAL;
 }

 return 0;
}
