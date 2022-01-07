
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int temac_ioctl(struct net_device *ndev, struct ifreq *rq, int cmd)
{
 if (!netif_running(ndev))
  return -EINVAL;

 if (!ndev->phydev)
  return -EINVAL;

 return phy_mii_ioctl(ndev->phydev, rq, cmd);
}
