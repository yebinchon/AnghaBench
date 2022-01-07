
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;





 int e1000_mii_ioctl (struct net_device*,struct ifreq*,int) ;
 int e1000e_hwtstamp_get (struct net_device*,struct ifreq*) ;
 int e1000e_hwtstamp_set (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 switch (cmd) {
 case 131:
 case 130:
 case 128:
  return e1000_mii_ioctl(netdev, ifr, cmd);
 case 129:
  return e1000e_hwtstamp_set(netdev, ifr);
 case 132:
  return e1000e_hwtstamp_get(netdev, ifr);
 default:
  return -EOPNOTSUPP;
 }
}
