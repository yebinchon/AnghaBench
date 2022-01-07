
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_cq {int dummy; } ;


 int CQ_OK ;
 int CQ_POLL_ERR ;
 int dr_cq_poll_one (struct mlx5dr_cq*) ;

__attribute__((used)) static int dr_poll_cq(struct mlx5dr_cq *dr_cq, int ne)
{
 int npolled;
 int err = 0;

 for (npolled = 0; npolled < ne; ++npolled) {
  err = dr_cq_poll_one(dr_cq);
  if (err != CQ_OK)
   break;
 }

 return err == CQ_POLL_ERR ? err : npolled;
}
