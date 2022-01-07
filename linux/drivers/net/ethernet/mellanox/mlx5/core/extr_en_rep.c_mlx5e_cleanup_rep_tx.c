
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int unready_flows_lock; int tc_ht; int netdevice_nb; } ;
struct mlx5e_rep_priv {TYPE_2__ uplink_priv; TYPE_1__* rep; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct TYPE_3__ {scalar_t__ vport; } ;


 scalar_t__ MLX5_VPORT_UPLINK ;
 int mlx5e_destroy_tises (struct mlx5e_priv*) ;
 int mlx5e_rep_indr_clean_block_privs (struct mlx5e_rep_priv*) ;
 int mlx5e_tc_esw_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static void mlx5e_cleanup_rep_tx(struct mlx5e_priv *priv)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;

 mlx5e_destroy_tises(priv);

 if (rpriv->rep->vport == MLX5_VPORT_UPLINK) {

  unregister_netdevice_notifier(&rpriv->uplink_priv.netdevice_nb);
  mlx5e_rep_indr_clean_block_privs(rpriv);


  mlx5e_tc_esw_cleanup(&rpriv->uplink_priv.tc_ht);
  mutex_destroy(&rpriv->uplink_priv.unready_flows_lock);
 }
}
