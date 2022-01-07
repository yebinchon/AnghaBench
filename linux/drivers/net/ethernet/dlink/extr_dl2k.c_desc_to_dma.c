
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_desc {int fraginfo; } ;
typedef int dma_addr_t ;


 int DMA_BIT_MASK (int) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline dma_addr_t desc_to_dma(struct netdev_desc *desc)
{
 return le64_to_cpu(desc->fraginfo) & DMA_BIT_MASK(48);
}
