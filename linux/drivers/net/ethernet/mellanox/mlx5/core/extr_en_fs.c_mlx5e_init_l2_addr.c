
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ broadcast; } ;
struct TYPE_7__ {TYPE_2__ l2; } ;
struct mlx5e_priv {TYPE_4__* netdev; TYPE_3__ fs; } ;
struct TYPE_8__ {int broadcast; } ;


 int ether_addr_copy (int ,int ) ;

void mlx5e_init_l2_addr(struct mlx5e_priv *priv)
{
 ether_addr_copy(priv->fs.l2.broadcast.addr, priv->netdev->broadcast);
}
