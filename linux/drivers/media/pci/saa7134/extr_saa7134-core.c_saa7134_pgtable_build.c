
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; scalar_t__ offset; } ;
struct saa7134_pgtable {int * cpu; } ;
struct pci_dev {int dummy; } ;
typedef int __le32 ;


 int BUG_ON (int) ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

int saa7134_pgtable_build(struct pci_dev *pci, struct saa7134_pgtable *pt,
     struct scatterlist *list, unsigned int length,
     unsigned int startpage)
{
 __le32 *ptr;
 unsigned int i, p;

 BUG_ON(((void*)0) == pt || ((void*)0) == pt->cpu);

 ptr = pt->cpu + startpage;
 for (i = 0; i < length; i++, list = sg_next(list)) {
  for (p = 0; p * 4096 < list->length; p++, ptr++)
   *ptr = cpu_to_le32(sg_dma_address(list) +
      list->offset + p * 4096);
 }
 return 0;
}
