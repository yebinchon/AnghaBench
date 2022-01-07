
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_6__ {scalar_t__ notifier_call; } ;
struct mlx5e_tc_table {int t_lock; int * t; int ht; int hairpin_tbl_lock; TYPE_1__ mod_hdr; TYPE_3__ netdevice_nb; } ;
struct TYPE_5__ {struct mlx5e_tc_table tc; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;


 int IS_ERR_OR_NULL (int *) ;
 int mlx5_destroy_flow_table (int *) ;
 int mutex_destroy (int *) ;
 int rhashtable_destroy (int *) ;
 int unregister_netdevice_notifier (TYPE_3__*) ;

void mlx5e_tc_nic_cleanup(struct mlx5e_priv *priv)
{
 struct mlx5e_tc_table *tc = &priv->fs.tc;

 if (tc->netdevice_nb.notifier_call)
  unregister_netdevice_notifier(&tc->netdevice_nb);

 mutex_destroy(&tc->mod_hdr.lock);
 mutex_destroy(&tc->hairpin_tbl_lock);

 rhashtable_destroy(&tc->ht);

 if (!IS_ERR_OR_NULL(tc->t)) {
  mlx5_destroy_flow_table(tc->t);
  tc->t = ((void*)0);
 }
 mutex_destroy(&tc->t_lock);
}
