
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int ets; int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct ieee_ets {int prio_tc; } ;


 int memcpy (int *,struct ieee_ets*,int) ;
 int mlx4_SET_PORT_PRIO2TC (int ,int ,int ) ;
 int mlx4_en_config_port_scheduler (struct mlx4_en_priv*,struct ieee_ets*,int *) ;
 int mlx4_en_ets_validate (struct mlx4_en_priv*,struct ieee_ets*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
mlx4_en_dcbnl_ieee_setets(struct net_device *dev, struct ieee_ets *ets)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err;

 err = mlx4_en_ets_validate(priv, ets);
 if (err)
  return err;

 err = mlx4_SET_PORT_PRIO2TC(mdev->dev, priv->port, ets->prio_tc);
 if (err)
  return err;

 err = mlx4_en_config_port_scheduler(priv, ets, ((void*)0));
 if (err)
  return err;

 memcpy(&priv->ets, ets, sizeof(priv->ets));

 return 0;
}
