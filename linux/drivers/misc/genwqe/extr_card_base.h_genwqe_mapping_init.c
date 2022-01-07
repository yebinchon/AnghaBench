
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_mapping {int type; int write; } ;
typedef enum dma_mapping_type { ____Placeholder_dma_mapping_type } dma_mapping_type ;


 int memset (struct dma_mapping*,int ,int) ;

__attribute__((used)) static inline void genwqe_mapping_init(struct dma_mapping *m,
           enum dma_mapping_type type)
{
 memset(m, 0, sizeof(*m));
 m->type = type;
 m->write = 1;
}
