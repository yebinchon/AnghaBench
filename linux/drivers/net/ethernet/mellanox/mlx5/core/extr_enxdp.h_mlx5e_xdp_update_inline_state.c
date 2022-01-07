
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5e_xdp_mpwqe {int inline_on; } ;
struct mlx5e_xdpsq {scalar_t__ xdpi_fifo_pc; scalar_t__ xdpi_fifo_cc; struct mlx5e_xdp_mpwqe mpwqe; } ;


 scalar_t__ MLX5E_XDP_INLINE_WATERMARK_HIGH ;
 scalar_t__ MLX5E_XDP_INLINE_WATERMARK_LOW ;

__attribute__((used)) static inline void mlx5e_xdp_update_inline_state(struct mlx5e_xdpsq *sq)
{
 u16 outstanding = sq->xdpi_fifo_pc - sq->xdpi_fifo_cc;
 struct mlx5e_xdp_mpwqe *session = &sq->mpwqe;




 if (session->inline_on) {
  if (outstanding <= 10)
   session->inline_on = 0;
  return;
 }


 if (outstanding >= 128)
  session->inline_on = 1;
}
