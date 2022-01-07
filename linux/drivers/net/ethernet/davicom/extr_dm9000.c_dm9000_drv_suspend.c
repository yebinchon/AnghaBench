
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct board_info {int in_suspend; int wake_state; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int dm9000_shutdown (struct net_device*) ;
 struct board_info* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int
dm9000_drv_suspend(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);
 struct board_info *db;

 if (ndev) {
  db = netdev_priv(ndev);
  db->in_suspend = 1;

  if (!netif_running(ndev))
   return 0;

  netif_device_detach(ndev);


  if (!db->wake_state)
   dm9000_shutdown(ndev);
 }
 return 0;
}
