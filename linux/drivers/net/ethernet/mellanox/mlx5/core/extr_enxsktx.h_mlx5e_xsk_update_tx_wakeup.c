
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xdpsq {scalar_t__ pc; scalar_t__ cc; int umem; } ;


 int xsk_clear_tx_need_wakeup (int ) ;
 int xsk_set_tx_need_wakeup (int ) ;
 int xsk_umem_uses_need_wakeup (int ) ;

__attribute__((used)) static inline void mlx5e_xsk_update_tx_wakeup(struct mlx5e_xdpsq *sq)
{
 if (!xsk_umem_uses_need_wakeup(sq->umem))
  return;

 if (sq->pc != sq->cc)
  xsk_clear_tx_need_wakeup(sq->umem);
 else
  xsk_set_tx_need_wakeup(sq->umem);
}
