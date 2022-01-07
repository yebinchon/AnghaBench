
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_queue {unsigned int num_descs; unsigned int desc_size; struct ionic_desc_info* info; int base_pa; void* base; } ;
struct ionic_desc_info {void* desc; } ;
typedef int dma_addr_t ;



void ionic_q_map(struct ionic_queue *q, void *base, dma_addr_t base_pa)
{
 struct ionic_desc_info *cur;
 unsigned int i;

 q->base = base;
 q->base_pa = base_pa;

 for (i = 0, cur = q->info; i < q->num_descs; i++, cur++)
  cur->desc = base + (i * q->desc_size);
}
