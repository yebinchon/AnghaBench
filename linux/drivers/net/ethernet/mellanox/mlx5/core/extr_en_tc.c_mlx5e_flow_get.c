
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int refcnt; } ;


 int EINVAL ;
 struct mlx5e_tc_flow* ERR_PTR (int ) ;
 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static struct mlx5e_tc_flow *mlx5e_flow_get(struct mlx5e_tc_flow *flow)
{
 if (!flow || !refcount_inc_not_zero(&flow->refcnt))
  return ERR_PTR(-EINVAL);
 return flow;
}
