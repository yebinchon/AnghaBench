
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq_ll {int wqe_ctr; int * db; } ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void mlx5_wq_ll_update_db_record(struct mlx5_wq_ll *wq)
{
 *wq->db = cpu_to_be32(wq->wqe_ctr);
}
