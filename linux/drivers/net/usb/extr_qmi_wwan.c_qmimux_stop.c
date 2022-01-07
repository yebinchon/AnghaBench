
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int qmimux_stop(struct net_device *dev)
{
 netif_carrier_off(dev);
 return 0;
}
