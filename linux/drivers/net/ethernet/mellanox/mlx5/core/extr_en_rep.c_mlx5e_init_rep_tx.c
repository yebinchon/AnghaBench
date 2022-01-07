
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct mlx5_rep_uplink_priv {int tc_ht; TYPE_2__ netdevice_nb; int tc_indr_block_priv_list; int tun_entropy; int unready_flows; int unready_flows_lock; } ;
struct mlx5e_rep_priv {struct mlx5_rep_uplink_priv uplink_priv; TYPE_1__* rep; } ;
struct mlx5e_priv {int mdev; struct mlx5e_rep_priv* ppriv; } ;
struct TYPE_3__ {scalar_t__ vport; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MLX5_VPORT_UPLINK ;
 int mlx5_core_err (int ,char*) ;
 int mlx5_core_warn (int ,char*,int) ;
 int mlx5_init_port_tun_entropy (int *,int ) ;
 int mlx5e_create_tises (struct mlx5e_priv*) ;
 int mlx5e_destroy_tises (struct mlx5e_priv*) ;
 int mlx5e_nic_rep_netdevice_event ;
 int mlx5e_tc_esw_cleanup (int *) ;
 int mlx5e_tc_esw_init (int *) ;
 int mutex_init (int *) ;
 int register_netdevice_notifier (TYPE_2__*) ;

__attribute__((used)) static int mlx5e_init_rep_tx(struct mlx5e_priv *priv)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_rep_uplink_priv *uplink_priv;
 int err;

 err = mlx5e_create_tises(priv);
 if (err) {
  mlx5_core_warn(priv->mdev, "create tises failed, %d\n", err);
  return err;
 }

 if (rpriv->rep->vport == MLX5_VPORT_UPLINK) {
  uplink_priv = &rpriv->uplink_priv;

  mutex_init(&uplink_priv->unready_flows_lock);
  INIT_LIST_HEAD(&uplink_priv->unready_flows);


  err = mlx5e_tc_esw_init(&uplink_priv->tc_ht);
  if (err)
   goto destroy_tises;

  mlx5_init_port_tun_entropy(&uplink_priv->tun_entropy, priv->mdev);


  INIT_LIST_HEAD(&uplink_priv->tc_indr_block_priv_list);
  uplink_priv->netdevice_nb.notifier_call = mlx5e_nic_rep_netdevice_event;
  err = register_netdevice_notifier(&uplink_priv->netdevice_nb);
  if (err) {
   mlx5_core_err(priv->mdev, "Failed to register netdev notifier\n");
   goto tc_esw_cleanup;
  }
 }

 return 0;

tc_esw_cleanup:
 mlx5e_tc_esw_cleanup(&uplink_priv->tc_ht);
destroy_tises:
 mlx5e_destroy_tises(priv);
 return err;
}
