
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {int phydev; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int ucc_geth_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct ucc_geth_private *ugeth = netdev_priv(dev);

 if (!netif_running(dev))
  return -EINVAL;

 if (!ugeth->phydev)
  return -ENODEV;

 return phy_mii_ioctl(ugeth->phydev, rq, cmd);
}
