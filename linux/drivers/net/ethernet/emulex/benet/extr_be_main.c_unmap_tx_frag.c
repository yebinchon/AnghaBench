
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct be_eth_wrb {int frag_pa_lo; int frag_pa_hi; int frag_len; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_unmap_page (struct device*,int,scalar_t__,int ) ;
 int dma_unmap_single (struct device*,int,scalar_t__,int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void unmap_tx_frag(struct device *dev, struct be_eth_wrb *wrb,
     bool unmap_single)
{
 dma_addr_t dma;
 u32 frag_len = le32_to_cpu(wrb->frag_len);


 dma = (u64)le32_to_cpu(wrb->frag_pa_hi) << 32 |
  (u64)le32_to_cpu(wrb->frag_pa_lo);
 if (frag_len) {
  if (unmap_single)
   dma_unmap_single(dev, dma, frag_len, DMA_TO_DEVICE);
  else
   dma_unmap_page(dev, dma, frag_len, DMA_TO_DEVICE);
 }
}
