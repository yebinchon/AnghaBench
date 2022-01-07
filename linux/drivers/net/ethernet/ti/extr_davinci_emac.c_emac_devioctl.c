
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (scalar_t__,struct ifreq*,int) ;

__attribute__((used)) static int emac_devioctl(struct net_device *ndev, struct ifreq *ifrq, int cmd)
{
 if (!(netif_running(ndev)))
  return -EINVAL;



 if (ndev->phydev)
  return phy_mii_ioctl(ndev->phydev, ifrq, cmd);
 else
  return -EOPNOTSUPP;
}
