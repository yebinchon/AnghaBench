
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xdpsq {int * doorbell_cseg; int uar_map; int pc; int wq; } ;


 int mlx5e_notify_hw (int *,int ,int ,int *) ;

__attribute__((used)) static inline void mlx5e_xmit_xdp_doorbell(struct mlx5e_xdpsq *sq)
{
 if (sq->doorbell_cseg) {
  mlx5e_notify_hw(&sq->wq, sq->pc, sq->uar_map, sq->doorbell_cseg);
  sq->doorbell_cseg = ((void*)0);
 }
}
