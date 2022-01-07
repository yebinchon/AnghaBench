
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;



 int atlx_mii_ioctl (struct net_device*,struct ifreq*,int) ;

__attribute__((used)) static int atlx_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 switch (cmd) {
 case 130:
 case 129:
 case 128:
  return atlx_mii_ioctl(netdev, ifr, cmd);
 default:
  return -EOPNOTSUPP;
 }
}
