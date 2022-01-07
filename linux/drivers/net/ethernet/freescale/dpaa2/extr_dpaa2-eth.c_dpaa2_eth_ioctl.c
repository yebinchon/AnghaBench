
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int SIOCSHWTSTAMP ;
 int dpaa2_eth_ts_ioctl (struct net_device*,struct ifreq*,int) ;

__attribute__((used)) static int dpaa2_eth_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 if (cmd == SIOCSHWTSTAMP)
  return dpaa2_eth_ts_ioctl(dev, rq, cmd);

 return -EINVAL;
}
