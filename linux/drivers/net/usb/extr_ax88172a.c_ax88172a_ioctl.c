
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int ax88172a_ioctl(struct net_device *net, struct ifreq *rq, int cmd)
{
 if (!netif_running(net))
  return -EINVAL;

 if (!net->phydev)
  return -ENODEV;

 return phy_mii_ioctl(net->phydev, rq, cmd);
}
