
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ xdp_prog; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; } ;


 int mlx5e_xdp_set_closed (struct mlx5e_priv*) ;
 int mlx5e_xdp_set_open (struct mlx5e_priv*) ;

__attribute__((used)) static int mlx5e_xdp_update_state(struct mlx5e_priv *priv)
{
 if (priv->channels.params.xdp_prog)
  mlx5e_xdp_set_open(priv);
 else
  mlx5e_xdp_set_closed(priv);

 return 0;
}
