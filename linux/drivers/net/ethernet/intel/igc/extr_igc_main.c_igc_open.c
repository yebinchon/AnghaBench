
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __igc_open (struct net_device*,int) ;

__attribute__((used)) static int igc_open(struct net_device *netdev)
{
 return __igc_open(netdev, 0);
}
