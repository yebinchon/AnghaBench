
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_stop_queue (struct net_device*) ;
 int softing_startstop (struct net_device*,int ) ;

__attribute__((used)) static int softing_netdev_stop(struct net_device *ndev)
{
 int ret;

 netif_stop_queue(ndev);


 ret = softing_startstop(ndev, 0);
 return ret;
}
