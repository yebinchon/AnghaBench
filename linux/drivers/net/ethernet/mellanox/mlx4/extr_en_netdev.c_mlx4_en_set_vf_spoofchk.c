
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;


 int mlx4_set_vf_spoofchk (int ,int ,int,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_vf_spoofchk(struct net_device *dev, int vf, bool setting)
{
 struct mlx4_en_priv *en_priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = en_priv->mdev;

 return mlx4_set_vf_spoofchk(mdev->dev, en_priv->port, vf, setting);
}
