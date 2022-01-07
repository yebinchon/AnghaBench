
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int caif_net_open(struct net_device *dev)
{
 netif_wake_queue(dev);
 return 0;
}
