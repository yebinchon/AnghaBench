
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int open_candev (struct net_device*) ;
 int softing_startstop (struct net_device*,int) ;

__attribute__((used)) static int softing_netdev_open(struct net_device *ndev)
{
 int ret;


 ret = open_candev(ndev);
 if (!ret)
  ret = softing_startstop(ndev, 1);
 return ret;
}
