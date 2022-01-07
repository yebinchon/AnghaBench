
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int e100_down (int ) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_close(struct net_device *netdev)
{
 e100_down(netdev_priv(netdev));
 return 0;
}
