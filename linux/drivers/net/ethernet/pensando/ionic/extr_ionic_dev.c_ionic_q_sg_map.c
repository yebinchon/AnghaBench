
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_queue {unsigned int num_descs; unsigned int sg_desc_size; struct ionic_desc_info* info; int sg_base_pa; void* sg_base; } ;
struct ionic_desc_info {void* sg_desc; } ;
typedef int dma_addr_t ;



void ionic_q_sg_map(struct ionic_queue *q, void *base, dma_addr_t base_pa)
{
 struct ionic_desc_info *cur;
 unsigned int i;

 q->sg_base = base;
 q->sg_base_pa = base_pa;

 for (i = 0, cur = q->info; i < q->num_descs; i++, cur++)
  cur->sg_desc = base + (i * q->sg_desc_size);
}
