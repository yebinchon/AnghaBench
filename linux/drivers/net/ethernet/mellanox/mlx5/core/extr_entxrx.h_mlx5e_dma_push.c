
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_txqsq {int dma_fifo_pc; } ;
struct mlx5e_sq_dma {int type; int size; int addr; } ;
typedef enum mlx5e_dma_map_type { ____Placeholder_mlx5e_dma_map_type } mlx5e_dma_map_type ;
typedef int dma_addr_t ;


 struct mlx5e_sq_dma* mlx5e_dma_get (struct mlx5e_txqsq*,int ) ;

__attribute__((used)) static inline void
mlx5e_dma_push(struct mlx5e_txqsq *sq, dma_addr_t addr, u32 size,
        enum mlx5e_dma_map_type map_type)
{
 struct mlx5e_sq_dma *dma = mlx5e_dma_get(sq, sq->dma_fifo_pc++);

 dma->addr = addr;
 dma->size = size;
 dma->type = map_type;
}
