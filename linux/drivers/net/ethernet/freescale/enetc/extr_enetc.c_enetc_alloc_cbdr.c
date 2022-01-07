
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_cbdr {int bd_count; scalar_t__ next_to_use; scalar_t__ next_to_clean; int bd_dma_base; int bd_base; } ;
struct enetc_cbd {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ALIGNED (int ,int) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_free_coherent (struct device*,int,int ,int ) ;

__attribute__((used)) static int enetc_alloc_cbdr(struct device *dev, struct enetc_cbdr *cbdr)
{
 int size = cbdr->bd_count * sizeof(struct enetc_cbd);

 cbdr->bd_base = dma_alloc_coherent(dev, size, &cbdr->bd_dma_base,
        GFP_KERNEL);
 if (!cbdr->bd_base)
  return -ENOMEM;


 if (!IS_ALIGNED(cbdr->bd_dma_base, 128)) {
  dma_free_coherent(dev, size, cbdr->bd_base, cbdr->bd_dma_base);
  return -EINVAL;
 }

 cbdr->next_to_clean = 0;
 cbdr->next_to_use = 0;

 return 0;
}
