
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int phydev; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int ENODEV ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int rtl8169_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 if (!netif_running(dev))
  return -ENODEV;

 return phy_mii_ioctl(tp->phydev, ifr, cmd);
}
