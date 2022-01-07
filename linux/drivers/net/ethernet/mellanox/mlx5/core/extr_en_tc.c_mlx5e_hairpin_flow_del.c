
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_tc_flow {TYPE_1__* hpe; int hairpin; } ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int flows_lock; } ;


 int list_del (int *) ;
 int mlx5e_hairpin_put (struct mlx5e_priv*,TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mlx5e_hairpin_flow_del(struct mlx5e_priv *priv,
       struct mlx5e_tc_flow *flow)
{

 if (!flow->hpe)
  return;

 spin_lock(&flow->hpe->flows_lock);
 list_del(&flow->hairpin);
 spin_unlock(&flow->hpe->flows_lock);

 mlx5e_hairpin_put(priv, flow->hpe);
 flow->hpe = ((void*)0);
}
