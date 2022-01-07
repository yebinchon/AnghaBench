
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int umem; } ;


 int xsk_umem_has_addrs_rq (int ,int) ;

bool mlx5e_xsk_pages_enough_umem(struct mlx5e_rq *rq, int count)
{



 return xsk_umem_has_addrs_rq(rq->umem, count);
}
