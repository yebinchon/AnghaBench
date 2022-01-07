
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __igb_open (struct net_device*,int) ;

int igb_open(struct net_device *netdev)
{
 return __igb_open(netdev, 0);
}
