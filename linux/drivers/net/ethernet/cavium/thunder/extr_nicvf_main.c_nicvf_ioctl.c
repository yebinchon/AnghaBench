
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;

 int nicvf_config_hwtstamp (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int nicvf_ioctl(struct net_device *netdev, struct ifreq *req, int cmd)
{
 switch (cmd) {
 case 128:
  return nicvf_config_hwtstamp(netdev, req);
 default:
  return -EOPNOTSUPP;
 }
}
