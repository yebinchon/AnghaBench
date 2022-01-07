
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_rep_priv {int dl_port; int vport_sqs_list; struct net_device* netdev; struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_profile {int dummy; } ;
struct mlx5_eswitch_rep {scalar_t__ vport; TYPE_1__* rep_data; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {struct mlx5e_rep_priv* priv; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MLX5_VPORT_UPLINK ;
 size_t REP_ETH ;
 int devlink_port_type_eth_set (int *,struct net_device*) ;
 int esw_warn (struct mlx5_core_dev*,char*,scalar_t__) ;
 scalar_t__ is_devlink_port_supported (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ;
 int kfree (struct mlx5e_rep_priv*) ;
 struct mlx5e_rep_priv* kzalloc (int,int ) ;
 int mlx5e_attach_netdev (int ) ;
 int mlx5e_create_mdev_resources (struct mlx5_core_dev*) ;
 struct net_device* mlx5e_create_netdev (struct mlx5_core_dev*,struct mlx5e_profile const*,int,struct mlx5e_rep_priv*) ;
 int mlx5e_destroy_mdev_resources (struct mlx5_core_dev*) ;
 int mlx5e_destroy_netdev (int ) ;
 int mlx5e_detach_netdev (int ) ;
 int mlx5e_get_max_num_channels (struct mlx5_core_dev*) ;
 int mlx5e_rep_neigh_cleanup (struct mlx5e_rep_priv*) ;
 int mlx5e_rep_neigh_init (struct mlx5e_rep_priv*) ;
 struct mlx5e_profile mlx5e_rep_profile ;
 struct mlx5e_profile mlx5e_uplink_rep_profile ;
 int netdev_priv (struct net_device*) ;
 int pr_warn (char*,scalar_t__) ;
 int register_devlink_port (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ;
 int register_netdev (struct net_device*) ;
 int unregister_devlink_port (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ;

__attribute__((used)) static int
mlx5e_vport_rep_load(struct mlx5_core_dev *dev, struct mlx5_eswitch_rep *rep)
{
 const struct mlx5e_profile *profile;
 struct mlx5e_rep_priv *rpriv;
 struct net_device *netdev;
 int nch, err;

 rpriv = kzalloc(sizeof(*rpriv), GFP_KERNEL);
 if (!rpriv)
  return -ENOMEM;


 rpriv->rep = rep;

 nch = mlx5e_get_max_num_channels(dev);
 profile = (rep->vport == MLX5_VPORT_UPLINK) ?
    &mlx5e_uplink_rep_profile : &mlx5e_rep_profile;
 netdev = mlx5e_create_netdev(dev, profile, nch, rpriv);
 if (!netdev) {
  pr_warn("Failed to create representor netdev for vport %d\n",
   rep->vport);
  kfree(rpriv);
  return -EINVAL;
 }

 rpriv->netdev = netdev;
 rep->rep_data[REP_ETH].priv = rpriv;
 INIT_LIST_HEAD(&rpriv->vport_sqs_list);

 if (rep->vport == MLX5_VPORT_UPLINK) {
  err = mlx5e_create_mdev_resources(dev);
  if (err)
   goto err_destroy_netdev;
 }

 err = mlx5e_attach_netdev(netdev_priv(netdev));
 if (err) {
  pr_warn("Failed to attach representor netdev for vport %d\n",
   rep->vport);
  goto err_destroy_mdev_resources;
 }

 err = mlx5e_rep_neigh_init(rpriv);
 if (err) {
  pr_warn("Failed to initialized neighbours handling for vport %d\n",
   rep->vport);
  goto err_detach_netdev;
 }

 err = register_devlink_port(dev, rpriv);
 if (err) {
  esw_warn(dev, "Failed to register devlink port %d\n",
    rep->vport);
  goto err_neigh_cleanup;
 }

 err = register_netdev(netdev);
 if (err) {
  pr_warn("Failed to register representor netdev for vport %d\n",
   rep->vport);
  goto err_devlink_cleanup;
 }

 if (is_devlink_port_supported(dev, rpriv))
  devlink_port_type_eth_set(&rpriv->dl_port, netdev);
 return 0;

err_devlink_cleanup:
 unregister_devlink_port(dev, rpriv);

err_neigh_cleanup:
 mlx5e_rep_neigh_cleanup(rpriv);

err_detach_netdev:
 mlx5e_detach_netdev(netdev_priv(netdev));

err_destroy_mdev_resources:
 if (rep->vport == MLX5_VPORT_UPLINK)
  mlx5e_destroy_mdev_resources(dev);

err_destroy_netdev:
 mlx5e_destroy_netdev(netdev_priv(netdev));
 kfree(rpriv);
 return err;
}
