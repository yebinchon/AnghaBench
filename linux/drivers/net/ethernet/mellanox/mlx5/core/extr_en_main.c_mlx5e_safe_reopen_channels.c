
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int params; } ;
struct mlx5e_priv {TYPE_1__ channels; } ;
struct mlx5e_channels {int params; } ;


 int mlx5e_safe_switch_channels (struct mlx5e_priv*,struct mlx5e_channels*,int *) ;

int mlx5e_safe_reopen_channels(struct mlx5e_priv *priv)
{
 struct mlx5e_channels new_channels = {};

 new_channels.params = priv->channels.params;
 return mlx5e_safe_switch_channels(priv, &new_channels, ((void*)0));
}
