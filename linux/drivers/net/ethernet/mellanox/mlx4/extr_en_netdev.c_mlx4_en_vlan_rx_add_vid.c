
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int port; scalar_t__ port_up; int active_vlans; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int dev; scalar_t__ device_up; } ;
typedef int __be16 ;


 int HW ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int mlx4_SET_VLAN_FLTR (int ,struct mlx4_en_priv*) ;
 int mlx4_register_vlan (int ,int ,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int mlx4_en_vlan_rx_add_vid(struct net_device *dev,
       __be16 proto, u16 vid)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err;
 int idx;

 en_dbg(HW, priv, "adding VLAN:%d\n", vid);

 set_bit(vid, priv->active_vlans);


 mutex_lock(&mdev->state_lock);
 if (mdev->device_up && priv->port_up) {
  err = mlx4_SET_VLAN_FLTR(mdev->dev, priv);
  if (err) {
   en_err(priv, "Failed configuring VLAN filter\n");
   goto out;
  }
 }
 err = mlx4_register_vlan(mdev->dev, priv->port, vid, &idx);
 if (err)
  en_dbg(HW, priv, "Failed adding vlan %d\n", vid);

out:
 mutex_unlock(&mdev->state_lock);
 return err;
}
