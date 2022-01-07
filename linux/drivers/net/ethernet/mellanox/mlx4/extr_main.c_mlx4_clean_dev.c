
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long flags; struct mlx4_dev_persistent* persist; } ;
struct mlx4_priv {TYPE_1__ dev; } ;
struct mlx4_dev_persistent {int dummy; } ;
struct mlx4_dev {unsigned long flags; struct mlx4_dev_persistent* persist; } ;


 unsigned long RESET_PERSIST_MASK_FLAGS ;
 int memset (struct mlx4_priv*,int ,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static void mlx4_clean_dev(struct mlx4_dev *dev)
{
 struct mlx4_dev_persistent *persist = dev->persist;
 struct mlx4_priv *priv = mlx4_priv(dev);
 unsigned long flags = (dev->flags & RESET_PERSIST_MASK_FLAGS);

 memset(priv, 0, sizeof(*priv));
 priv->dev.persist = persist;
 priv->dev.flags = flags;
}
