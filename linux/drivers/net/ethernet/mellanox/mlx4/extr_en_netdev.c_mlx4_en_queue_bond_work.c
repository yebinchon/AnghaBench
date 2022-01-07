
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct mlx4_en_priv {TYPE_2__* mdev; int dev; } ;
struct TYPE_3__ {void* port2; void* port1; } ;
struct mlx4_en_bond {int is_bonded; int work; TYPE_1__ port_map; struct mlx4_en_priv* priv; } ;
struct TYPE_4__ {int workqueue; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int dev_hold (int ) ;
 struct mlx4_en_bond* kzalloc (int,int ) ;
 int mlx4_en_bond_work ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int mlx4_en_queue_bond_work(struct mlx4_en_priv *priv, int is_bonded,
       u8 v2p_p1, u8 v2p_p2)
{
 struct mlx4_en_bond *bond = ((void*)0);

 bond = kzalloc(sizeof(*bond), GFP_ATOMIC);
 if (!bond)
  return -ENOMEM;

 INIT_WORK(&bond->work, mlx4_en_bond_work);
 bond->priv = priv;
 bond->is_bonded = is_bonded;
 bond->port_map.port1 = v2p_p1;
 bond->port_map.port2 = v2p_p2;
 dev_hold(priv->dev);
 queue_work(priv->mdev->workqueue, &bond->work);
 return 0;
}
