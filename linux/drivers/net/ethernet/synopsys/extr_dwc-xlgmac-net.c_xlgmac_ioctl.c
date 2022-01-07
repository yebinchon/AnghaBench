
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int ENODEV ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int xlgmac_ioctl(struct net_device *netdev,
   struct ifreq *ifreq, int cmd)
{
 if (!netif_running(netdev))
  return -ENODEV;

 return 0;
}
