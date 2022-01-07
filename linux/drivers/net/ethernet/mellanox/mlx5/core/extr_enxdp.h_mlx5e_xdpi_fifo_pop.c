
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xdp_info_fifo {size_t mask; int * cc; struct mlx5e_xdp_info* xi; } ;
struct mlx5e_xdp_info {int dummy; } ;



__attribute__((used)) static inline struct mlx5e_xdp_info
mlx5e_xdpi_fifo_pop(struct mlx5e_xdp_info_fifo *fifo)
{
 return fifo->xi[(*fifo->cc)++ & fifo->mask];
}
