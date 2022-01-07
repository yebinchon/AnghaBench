
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ clock_offset; int clock_bar; } ;
struct mlx4_priv {int clock_mapping; TYPE_2__ fw; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_3__ {int pdev; } ;


 int ENOMEM ;
 int MLX4_CLOCK_SIZE ;
 int ioremap (scalar_t__,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 scalar_t__ pci_resource_start (int ,int ) ;

__attribute__((used)) static int map_internal_clock(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 priv->clock_mapping =
  ioremap(pci_resource_start(dev->persist->pdev,
        priv->fw.clock_bar) +
   priv->fw.clock_offset, MLX4_CLOCK_SIZE);

 if (!priv->clock_mapping)
  return -ENOMEM;

 return 0;
}
