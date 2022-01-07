
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_profile {int max_tc; int rq_groups; int (* init ) (struct mlx5_core_dev*,struct net_device*,struct mlx5e_profile const*,void*) ;} ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 struct net_device* alloc_etherdev_mqs (int,int,int) ;
 int free_netdev (struct net_device*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,...) ;
 int stub1 (struct mlx5_core_dev*,struct net_device*,struct mlx5e_profile const*,void*) ;

struct net_device *mlx5e_create_netdev(struct mlx5_core_dev *mdev,
           const struct mlx5e_profile *profile,
           int nch,
           void *ppriv)
{
 struct net_device *netdev;
 int err;

 netdev = alloc_etherdev_mqs(sizeof(struct mlx5e_priv),
        nch * profile->max_tc,
        nch * profile->rq_groups);
 if (!netdev) {
  mlx5_core_err(mdev, "alloc_etherdev_mqs() failed\n");
  return ((void*)0);
 }

 err = profile->init(mdev, netdev, profile, ppriv);
 if (err) {
  mlx5_core_err(mdev, "failed to init mlx5e profile %d\n", err);
  goto err_free_netdev;
 }

 return netdev;

err_free_netdev:
 free_netdev(netdev);

 return ((void*)0);
}
