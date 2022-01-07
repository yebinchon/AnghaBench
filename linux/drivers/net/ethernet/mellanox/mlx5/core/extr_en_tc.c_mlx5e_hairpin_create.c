
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5e_hairpin {int num_channels; struct mlx5_hairpin* pair; struct mlx5e_priv* func_priv; struct mlx5_core_dev* func_mdev; } ;
struct mlx5_hairpin_params {int num_channels; } ;
struct mlx5_hairpin {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 struct mlx5e_hairpin* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_hairpin*) ;
 int PTR_ERR (struct mlx5_hairpin*) ;
 int dev_net (int ) ;
 int kfree (struct mlx5e_hairpin*) ;
 struct mlx5e_hairpin* kzalloc (int,int ) ;
 struct mlx5_hairpin* mlx5_core_hairpin_create (struct mlx5_core_dev*,struct mlx5_core_dev*,struct mlx5_hairpin_params*) ;
 int mlx5_core_hairpin_destroy (struct mlx5_hairpin*) ;
 int mlx5e_hairpin_create_transport (struct mlx5e_hairpin*) ;
 int mlx5e_hairpin_destroy_transport (struct mlx5e_hairpin*) ;
 struct mlx5_core_dev* mlx5e_hairpin_get_mdev (int ,int) ;
 int mlx5e_hairpin_rss_init (struct mlx5e_hairpin*) ;

__attribute__((used)) static struct mlx5e_hairpin *
mlx5e_hairpin_create(struct mlx5e_priv *priv, struct mlx5_hairpin_params *params,
       int peer_ifindex)
{
 struct mlx5_core_dev *func_mdev, *peer_mdev;
 struct mlx5e_hairpin *hp;
 struct mlx5_hairpin *pair;
 int err;

 hp = kzalloc(sizeof(*hp), GFP_KERNEL);
 if (!hp)
  return ERR_PTR(-ENOMEM);

 func_mdev = priv->mdev;
 peer_mdev = mlx5e_hairpin_get_mdev(dev_net(priv->netdev), peer_ifindex);

 pair = mlx5_core_hairpin_create(func_mdev, peer_mdev, params);
 if (IS_ERR(pair)) {
  err = PTR_ERR(pair);
  goto create_pair_err;
 }
 hp->pair = pair;
 hp->func_mdev = func_mdev;
 hp->func_priv = priv;
 hp->num_channels = params->num_channels;

 err = mlx5e_hairpin_create_transport(hp);
 if (err)
  goto create_transport_err;

 if (hp->num_channels > 1) {
  err = mlx5e_hairpin_rss_init(hp);
  if (err)
   goto rss_init_err;
 }

 return hp;

rss_init_err:
 mlx5e_hairpin_destroy_transport(hp);
create_transport_err:
 mlx5_core_hairpin_destroy(hp->pair);
create_pair_err:
 kfree(hp);
 return ERR_PTR(err);
}
