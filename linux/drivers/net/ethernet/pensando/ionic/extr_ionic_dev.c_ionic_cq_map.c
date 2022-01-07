
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_cq_info {void* cq_desc; } ;
struct ionic_cq {unsigned int num_descs; unsigned int desc_size; struct ionic_cq_info* info; int base_pa; void* base; } ;
typedef int dma_addr_t ;



void ionic_cq_map(struct ionic_cq *cq, void *base, dma_addr_t base_pa)
{
 struct ionic_cq_info *cur;
 unsigned int i;

 cq->base = base;
 cq->base_pa = base_pa;

 for (i = 0, cur = cq->info; i < cq->num_descs; i++, cur++)
  cur->cq_desc = base + (i * cq->desc_size);
}
