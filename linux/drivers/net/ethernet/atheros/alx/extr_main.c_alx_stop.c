
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __alx_stop (int ) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int alx_stop(struct net_device *netdev)
{
 __alx_stop(netdev_priv(netdev));
 return 0;
}
