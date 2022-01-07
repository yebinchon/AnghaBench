
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {struct mlx5e_sq_dma* dma_fifo; } ;
struct mlx5e_txqsq {size_t dma_fifo_mask; TYPE_1__ db; } ;
struct mlx5e_sq_dma {int dummy; } ;



__attribute__((used)) static inline struct mlx5e_sq_dma *
mlx5e_dma_get(struct mlx5e_txqsq *sq, u32 i)
{
 return &sq->db.dma_fifo[i & sq->dma_fifo_mask];
}
