
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_en_priv {int rx_ring_num; TYPE_1__** rx_cq; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int vector; } ;


 int MLX4_FLAG_MSI_X ;
 scalar_t__ mlx4_is_slave (TYPE_2__*) ;
 int mlx4_test_async (TYPE_2__*) ;
 int mlx4_test_interrupt (TYPE_2__*,int ) ;

__attribute__((used)) static int mlx4_en_test_interrupts(struct mlx4_en_priv *priv)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 int err = 0;
 int i = 0;

 err = mlx4_test_async(mdev->dev);

 if (!(mdev->dev->flags & MLX4_FLAG_MSI_X) || mlx4_is_slave(mdev->dev))
  return err;





 for (i = 0; i < priv->rx_ring_num; i++) {
  err = mlx4_test_interrupt(mdev->dev, priv->rx_cq[i]->vector);
  if (err)
   break;
 }

 return err;
}
