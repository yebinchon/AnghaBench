
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int ENODEV ;


 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (struct phy_device*,struct ifreq*,int) ;
 int ravb_hwtstamp_get (struct net_device*,struct ifreq*) ;
 int ravb_hwtstamp_set (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int ravb_do_ioctl(struct net_device *ndev, struct ifreq *req, int cmd)
{
 struct phy_device *phydev = ndev->phydev;

 if (!netif_running(ndev))
  return -EINVAL;

 if (!phydev)
  return -ENODEV;

 switch (cmd) {
 case 129:
  return ravb_hwtstamp_get(ndev, req);
 case 128:
  return ravb_hwtstamp_set(ndev, req);
 }

 return phy_mii_ioctl(phydev, req, cmd);
}
