
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {size_t* dscp2prio; } ;
struct mlx5e_priv {TYPE_1__ dcbx_dp; int mdev; } ;


 int mlx5_set_dscp2prio (int ,size_t,size_t) ;

__attribute__((used)) static int mlx5e_set_dscp2prio(struct mlx5e_priv *priv, u8 dscp, u8 prio)
{
 int err;

 err = mlx5_set_dscp2prio(priv->mdev, dscp, prio);
 if (err)
  return err;

 priv->dcbx_dp.dscp2prio[dscp] = prio;
 return err;
}
