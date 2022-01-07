
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int dev_close (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void axienet_shutdown(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);

 rtnl_lock();
 netif_device_detach(ndev);

 if (netif_running(ndev))
  dev_close(ndev);

 rtnl_unlock();
}
