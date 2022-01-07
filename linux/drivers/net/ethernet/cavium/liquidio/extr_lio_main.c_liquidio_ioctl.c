
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct lio {TYPE_1__* oct_dev; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int ptp_enable; } ;


 int EOPNOTSUPP ;
 struct lio* GET_LIO (struct net_device*) ;

 int hwtstamp_ioctl (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int liquidio_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct lio *lio = GET_LIO(netdev);

 switch (cmd) {
 case 128:
  if (lio->oct_dev->ptp_enable)
   return hwtstamp_ioctl(netdev, ifr);

 default:
  return -EOPNOTSUPP;
 }
}
