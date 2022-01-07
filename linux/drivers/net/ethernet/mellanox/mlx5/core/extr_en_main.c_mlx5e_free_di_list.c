
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int di; } ;
struct mlx5e_rq {TYPE_1__ wqe; } ;


 int kvfree (int ) ;

__attribute__((used)) static void mlx5e_free_di_list(struct mlx5e_rq *rq)
{
 kvfree(rq->wqe.di);
}
