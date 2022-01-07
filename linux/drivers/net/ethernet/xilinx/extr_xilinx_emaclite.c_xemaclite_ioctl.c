
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int xemaclite_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 if (!dev->phydev || !netif_running(dev))
  return -EINVAL;

 switch (cmd) {
 case 130:
 case 129:
 case 128:
  return phy_mii_ioctl(dev->phydev, rq, cmd);
 default:
  return -EOPNOTSUPP;
 }
}
