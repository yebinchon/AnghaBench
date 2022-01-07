
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct mlx5_eswitch_rep {TYPE_1__* rep_data; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_2__ {void* priv; } ;


 int MLX5_VPORT_UPLINK ;
 struct mlx5_eswitch_rep* mlx5_eswitch_get_rep (struct mlx5_eswitch*,int ) ;

void *mlx5_eswitch_get_uplink_priv(struct mlx5_eswitch *esw, u8 rep_type)
{
 struct mlx5_eswitch_rep *rep;

 rep = mlx5_eswitch_get_rep(esw, MLX5_VPORT_UPLINK);
 return rep->rep_data[rep_type].priv;
}
