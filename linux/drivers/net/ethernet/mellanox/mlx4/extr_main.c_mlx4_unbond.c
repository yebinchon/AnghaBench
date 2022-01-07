
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_priv {int bond_mutex; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_dbg (struct mlx4_dev*,char*) ;
 int mlx4_do_bond (struct mlx4_dev*,int) ;
 int mlx4_err (struct mlx4_dev*,char*,int) ;
 scalar_t__ mlx4_is_bonded (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;
 int mlx4_mf_unbond (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx4_unbond(struct mlx4_dev *dev)
{
 int ret = 0;
 struct mlx4_priv *priv = mlx4_priv(dev);

 mutex_lock(&priv->bond_mutex);

 if (mlx4_is_bonded(dev)) {
  int ret2 = 0;

  ret = mlx4_do_bond(dev, 0);
  if (ret)
   mlx4_err(dev, "Failed to unbond device: %d\n", ret);
  if (mlx4_is_master(dev))
   ret2 = mlx4_mf_unbond(dev);
  if (ret2) {
   mlx4_warn(dev, "Failed to unbond device for multifunction (%d)\n", ret2);
   ret = ret2;
  }
 }

 mutex_unlock(&priv->bond_mutex);
 if (!ret)
  mlx4_dbg(dev, "Device is unbonded\n");

 return ret;
}
