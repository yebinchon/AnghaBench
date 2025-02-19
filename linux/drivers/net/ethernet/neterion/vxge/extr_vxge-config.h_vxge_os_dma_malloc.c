
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
typedef int gfp_t ;


 int GFP_ATOMIC ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ VXGE_ALIGN (unsigned long,scalar_t__) ;
 scalar_t__ VXGE_CACHE_LINE_SIZE ;
 scalar_t__ in_interrupt () ;
 int kfree (void*) ;
 void* kmalloc (unsigned long,int) ;

__attribute__((used)) static inline void *vxge_os_dma_malloc(struct pci_dev *pdev,
   unsigned long size,
   struct pci_dev **p_dmah,
   struct pci_dev **p_dma_acch)
{
 gfp_t flags;
 void *vaddr;
 unsigned long misaligned = 0;
 int realloc_flag = 0;
 *p_dma_acch = *p_dmah = ((void*)0);

 if (in_interrupt())
  flags = GFP_ATOMIC | GFP_DMA;
 else
  flags = GFP_KERNEL | GFP_DMA;
realloc:
 vaddr = kmalloc((size), flags);
 if (vaddr == ((void*)0))
  return vaddr;
 misaligned = (unsigned long)VXGE_ALIGN((unsigned long)vaddr,
    VXGE_CACHE_LINE_SIZE);
 if (realloc_flag)
  goto out;

 if (misaligned) {



  kfree(vaddr);
  size += VXGE_CACHE_LINE_SIZE;
  realloc_flag = 1;
  goto realloc;
 }
out:
 *(unsigned long *)p_dma_acch = misaligned;
 vaddr = (void *)((u8 *)vaddr + misaligned);
 return vaddr;
}
