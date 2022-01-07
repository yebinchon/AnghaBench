
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* arfs_tables; int wq; } ;
struct TYPE_8__ {TYPE_2__ arfs; } ;
struct mlx5e_priv {TYPE_3__ fs; TYPE_1__* netdev; } ;
struct TYPE_9__ {int t; } ;
struct TYPE_10__ {TYPE_4__ ft; } ;
struct TYPE_6__ {int hw_features; } ;


 int ARFS_NUM_TYPES ;
 int IS_ERR_OR_NULL (int ) ;
 int NETIF_F_NTUPLE ;
 int arfs_del_rules (struct mlx5e_priv*) ;
 int arfs_destroy_table (TYPE_5__*) ;
 int destroy_workqueue (int ) ;

void mlx5e_arfs_destroy_tables(struct mlx5e_priv *priv)
{
 int i;

 if (!(priv->netdev->hw_features & NETIF_F_NTUPLE))
  return;

 arfs_del_rules(priv);
 destroy_workqueue(priv->fs.arfs.wq);
 for (i = 0; i < ARFS_NUM_TYPES; i++) {
  if (!IS_ERR_OR_NULL(priv->fs.arfs.arfs_tables[i].ft.t))
   arfs_destroy_table(&priv->fs.arfs.arfs_tables[i]);
 }
}
