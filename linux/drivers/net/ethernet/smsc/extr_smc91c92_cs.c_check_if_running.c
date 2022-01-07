
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int check_if_running(struct net_device *dev)
{
 if (!netif_running(dev))
  return -EINVAL;
 return 0;
}
