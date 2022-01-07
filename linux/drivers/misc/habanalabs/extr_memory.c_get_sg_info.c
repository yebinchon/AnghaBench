
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
typedef int dma_addr_t ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static u32 get_sg_info(struct scatterlist *sg, dma_addr_t *dma_addr)
{
 *dma_addr = sg_dma_address(sg);

 return ((((*dma_addr) & (PAGE_SIZE - 1)) + sg_dma_len(sg)) +
   (PAGE_SIZE - 1)) >> PAGE_SHIFT;
}
