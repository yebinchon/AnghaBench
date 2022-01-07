
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_cq {int wq; } ;
struct mlx5_cqe64 {int dummy; } ;


 int CQ_EMPTY ;
 int dr_parse_cqe (struct mlx5dr_cq*,struct mlx5_cqe64*) ;
 struct mlx5_cqe64* mlx5_cqwq_get_cqe (int *) ;
 int mlx5_cqwq_pop (int *) ;
 int mlx5_cqwq_update_db_record (int *) ;

__attribute__((used)) static int dr_cq_poll_one(struct mlx5dr_cq *dr_cq)
{
 struct mlx5_cqe64 *cqe64;
 int err;

 cqe64 = mlx5_cqwq_get_cqe(&dr_cq->wq);
 if (!cqe64)
  return CQ_EMPTY;

 mlx5_cqwq_pop(&dr_cq->wq);
 err = dr_parse_cqe(dr_cq, cqe64);
 mlx5_cqwq_update_db_record(&dr_cq->wq);

 return err;
}
