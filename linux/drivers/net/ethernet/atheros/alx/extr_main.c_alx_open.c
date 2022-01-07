
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __alx_open (int ,int) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int alx_open(struct net_device *netdev)
{
 return __alx_open(netdev_priv(netdev), 0);
}
