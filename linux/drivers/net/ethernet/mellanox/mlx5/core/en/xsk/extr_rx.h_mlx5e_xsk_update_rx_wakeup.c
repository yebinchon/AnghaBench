
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int umem; } ;


 scalar_t__ unlikely (int) ;
 int xsk_clear_rx_need_wakeup (int ) ;
 int xsk_set_rx_need_wakeup (int ) ;
 int xsk_umem_uses_need_wakeup (int ) ;

__attribute__((used)) static inline bool mlx5e_xsk_update_rx_wakeup(struct mlx5e_rq *rq, bool alloc_err)
{
 if (!xsk_umem_uses_need_wakeup(rq->umem))
  return alloc_err;

 if (unlikely(alloc_err))
  xsk_set_rx_need_wakeup(rq->umem);
 else
  xsk_clear_rx_need_wakeup(rq->umem);

 return 0;
}
