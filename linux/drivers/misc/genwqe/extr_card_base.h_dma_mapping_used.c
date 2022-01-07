
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_mapping {scalar_t__ size; } ;



__attribute__((used)) static inline bool dma_mapping_used(struct dma_mapping *m)
{
 if (!m)
  return 0;
 return m->size != 0;
}
