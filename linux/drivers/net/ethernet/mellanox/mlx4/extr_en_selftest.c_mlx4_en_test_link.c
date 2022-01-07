
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_state; } ;
struct mlx4_en_priv {TYPE_1__ port_state; int port; int mdev; } ;


 int ENOMEM ;
 scalar_t__ mlx4_en_QUERY_PORT (int ,int ) ;

__attribute__((used)) static int mlx4_en_test_link(struct mlx4_en_priv *priv)
{
 if (mlx4_en_QUERY_PORT(priv->mdev, priv->port))
  return -ENOMEM;
 if (priv->port_state.link_state == 1)
  return 0;
 else
  return 1;
}
