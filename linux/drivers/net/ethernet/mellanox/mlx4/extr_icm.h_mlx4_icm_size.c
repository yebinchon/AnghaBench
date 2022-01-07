
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_icm_iter {size_t page_idx; TYPE_2__* chunk; } ;
struct TYPE_4__ {int * sg; TYPE_1__* buf; scalar_t__ coherent; } ;
struct TYPE_3__ {unsigned long size; } ;


 unsigned long sg_dma_len (int *) ;

__attribute__((used)) static inline unsigned long mlx4_icm_size(struct mlx4_icm_iter *iter)
{
 if (iter->chunk->coherent)
  return iter->chunk->buf[iter->page_idx].size;
 else
  return sg_dma_len(&iter->chunk->sg[iter->page_idx]);
}
