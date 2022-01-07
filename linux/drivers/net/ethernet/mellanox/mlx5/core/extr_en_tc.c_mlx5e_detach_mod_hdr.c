
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_tc_flow {TYPE_1__* mh; int mod_hdr; } ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int flows_lock; } ;


 int get_flow_name_space (struct mlx5e_tc_flow*) ;
 int list_del (int *) ;
 int mlx5e_mod_hdr_put (struct mlx5e_priv*,TYPE_1__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mlx5e_detach_mod_hdr(struct mlx5e_priv *priv,
     struct mlx5e_tc_flow *flow)
{

 if (!flow->mh)
  return;

 spin_lock(&flow->mh->flows_lock);
 list_del(&flow->mod_hdr);
 spin_unlock(&flow->mh->flows_lock);

 mlx5e_mod_hdr_put(priv, flow->mh, get_flow_name_space(flow));
 flow->mh = ((void*)0);
}
