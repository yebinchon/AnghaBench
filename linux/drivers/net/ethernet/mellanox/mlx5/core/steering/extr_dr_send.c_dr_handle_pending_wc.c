
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_send_ring {scalar_t__ pending_wqe; scalar_t__ signal_th; int cq; } ;
struct mlx5dr_domain {TYPE_1__* send_ring; } ;
struct TYPE_2__ {int signal_th; } ;


 int TH_NUMS_TO_DRAIN ;
 int dr_poll_cq (int ,int) ;

__attribute__((used)) static int dr_handle_pending_wc(struct mlx5dr_domain *dmn,
    struct mlx5dr_send_ring *send_ring)
{
 bool is_drain = 0;
 int ne;

 if (send_ring->pending_wqe < send_ring->signal_th)
  return 0;


 if (send_ring->pending_wqe >=
     dmn->send_ring->signal_th * TH_NUMS_TO_DRAIN)
  is_drain = 1;

 do {
  ne = dr_poll_cq(send_ring->cq, 1);
  if (ne < 0)
   return ne;
  else if (ne == 1)
   send_ring->pending_wqe -= send_ring->signal_th;
 } while (is_drain && send_ring->pending_wqe);

 return 0;
}
