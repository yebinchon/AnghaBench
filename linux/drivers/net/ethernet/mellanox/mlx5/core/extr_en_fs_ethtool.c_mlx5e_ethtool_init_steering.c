
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rules; } ;
struct TYPE_4__ {TYPE_1__ ethtool; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;


 int INIT_LIST_HEAD (int *) ;

void mlx5e_ethtool_init_steering(struct mlx5e_priv *priv)
{
 INIT_LIST_HEAD(&priv->fs.ethtool.rules);
}
