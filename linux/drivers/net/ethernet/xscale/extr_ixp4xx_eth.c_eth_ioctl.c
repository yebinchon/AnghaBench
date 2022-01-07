
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int SIOCGHWTSTAMP ;
 int SIOCSHWTSTAMP ;
 scalar_t__ cpu_is_ixp46x () ;
 int hwtstamp_get (struct net_device*,struct ifreq*) ;
 int hwtstamp_set (struct net_device*,struct ifreq*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int eth_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 if (!netif_running(dev))
  return -EINVAL;

 if (cpu_is_ixp46x()) {
  if (cmd == SIOCSHWTSTAMP)
   return hwtstamp_set(dev, req);
  if (cmd == SIOCGHWTSTAMP)
   return hwtstamp_get(dev, req);
 }

 return phy_mii_ioctl(dev->phydev, req, cmd);
}
