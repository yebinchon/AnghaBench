
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rep_priv {void* netdev; } ;
struct mlx5_eswitch_rep {int dummy; } ;


 struct mlx5e_rep_priv* mlx5e_rep_to_rep_priv (struct mlx5_eswitch_rep*) ;

__attribute__((used)) static void *mlx5e_vport_rep_get_proto_dev(struct mlx5_eswitch_rep *rep)
{
 struct mlx5e_rep_priv *rpriv;

 rpriv = mlx5e_rep_to_rep_priv(rep);

 return rpriv->netdev;
}
