
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * notifier_call; } ;
struct TYPE_4__ {int hlist; int lock; } ;
struct mlx5e_tc_table {TYPE_3__ netdevice_nb; int ht; int hairpin_tbl; int hairpin_tbl_lock; TYPE_1__ mod_hdr; int t_lock; } ;
struct TYPE_5__ {struct mlx5e_tc_table tc; } ;
struct mlx5e_priv {int mdev; TYPE_2__ fs; } ;


 int hash_init (int ) ;
 int mlx5_core_warn (int ,char*) ;
 int * mlx5e_tc_netdev_event ;
 int mutex_init (int *) ;
 scalar_t__ register_netdevice_notifier (TYPE_3__*) ;
 int rhashtable_init (int *,int *) ;
 int tc_ht_params ;

int mlx5e_tc_nic_init(struct mlx5e_priv *priv)
{
 struct mlx5e_tc_table *tc = &priv->fs.tc;
 int err;

 mutex_init(&tc->t_lock);
 mutex_init(&tc->mod_hdr.lock);
 hash_init(tc->mod_hdr.hlist);
 mutex_init(&tc->hairpin_tbl_lock);
 hash_init(tc->hairpin_tbl);

 err = rhashtable_init(&tc->ht, &tc_ht_params);
 if (err)
  return err;

 tc->netdevice_nb.notifier_call = mlx5e_tc_netdev_event;
 if (register_netdevice_notifier(&tc->netdevice_nb)) {
  tc->netdevice_nb.notifier_call = ((void*)0);
  mlx5_core_warn(priv->mdev, "Failed to register netdev notifier\n");
 }

 return err;
}
