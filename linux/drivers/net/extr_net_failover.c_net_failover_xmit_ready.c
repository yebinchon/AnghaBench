
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static bool net_failover_xmit_ready(struct net_device *dev)
{
 return netif_running(dev) && netif_carrier_ok(dev);
}
