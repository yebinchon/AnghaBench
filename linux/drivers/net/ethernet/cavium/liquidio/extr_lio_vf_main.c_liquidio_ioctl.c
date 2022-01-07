
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;

 int hwtstamp_ioctl (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int liquidio_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 switch (cmd) {
 case 128:
  return hwtstamp_ioctl(netdev, ifr);
 default:
  return -EOPNOTSUPP;
 }
}
