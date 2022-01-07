
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mlx5e_xdp_info_fifo {size_t mask; struct mlx5e_xdp_info* xi; int * pc; } ;
struct mlx5e_xdp_info {int dummy; } ;



__attribute__((used)) static inline void
mlx5e_xdpi_fifo_push(struct mlx5e_xdp_info_fifo *fifo,
       struct mlx5e_xdp_info *xi)
{
 u32 i = (*fifo->pc)++ & fifo->mask;

 fifo->xi[i] = *xi;
}
