
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_icm_iter {size_t page_idx; TYPE_2__* chunk; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int * sg; TYPE_1__* buf; scalar_t__ coherent; } ;
struct TYPE_3__ {int dma_addr; } ;


 int sg_dma_address (int *) ;

__attribute__((used)) static inline dma_addr_t mlx4_icm_addr(struct mlx4_icm_iter *iter)
{
 if (iter->chunk->coherent)
  return iter->chunk->buf[iter->page_idx].dma_addr;
 else
  return sg_dma_address(&iter->chunk->sg[iter->page_idx]);
}
