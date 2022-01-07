
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {TYPE_1__* netdev; int mdev; struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int no_trailer; int wq; struct mlx5e_priv* en_priv; int halloc; int sadb_rx_lock; int sadb_rx; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ACCEL_IPSEC_CAP_RX_NO_TRAILER ;
 int MLX5_IPSEC_DEV (int ) ;
 int alloc_ordered_workqueue (char*,int ,int ) ;
 int hash_init (int ) ;
 int ida_init (int *) ;
 int kfree (struct mlx5e_ipsec*) ;
 struct mlx5e_ipsec* kzalloc (int,int ) ;
 int mlx5_accel_ipsec_device_caps (int ) ;
 int netdev_dbg (TYPE_1__*,char*) ;
 int spin_lock_init (int *) ;

int mlx5e_ipsec_init(struct mlx5e_priv *priv)
{
 struct mlx5e_ipsec *ipsec = ((void*)0);

 if (!MLX5_IPSEC_DEV(priv->mdev)) {
  netdev_dbg(priv->netdev, "Not an IPSec offload device\n");
  return 0;
 }

 ipsec = kzalloc(sizeof(*ipsec), GFP_KERNEL);
 if (!ipsec)
  return -ENOMEM;

 hash_init(ipsec->sadb_rx);
 spin_lock_init(&ipsec->sadb_rx_lock);
 ida_init(&ipsec->halloc);
 ipsec->en_priv = priv;
 ipsec->en_priv->ipsec = ipsec;
 ipsec->no_trailer = !!(mlx5_accel_ipsec_device_caps(priv->mdev) &
          MLX5_ACCEL_IPSEC_CAP_RX_NO_TRAILER);
 ipsec->wq = alloc_ordered_workqueue("mlx5e_ipsec: %s", 0,
         priv->netdev->name);
 if (!ipsec->wq) {
  kfree(ipsec);
  return -ENOMEM;
 }
 netdev_dbg(priv->netdev, "IPSec attached to netdevice\n");
 return 0;
}
