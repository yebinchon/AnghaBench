
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rep_priv {int dl_port; } ;
struct mlx5_core_dev {int dummy; } ;


 int devlink_port_unregister (int *) ;
 scalar_t__ is_devlink_port_supported (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ;

__attribute__((used)) static void unregister_devlink_port(struct mlx5_core_dev *dev,
        struct mlx5e_rep_priv *rpriv)
{
 if (is_devlink_port_supported(dev, rpriv))
  devlink_port_unregister(&rpriv->dl_port);
}
