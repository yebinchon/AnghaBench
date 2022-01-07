
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct board_info {scalar_t__ in_suspend; int wake_state; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int dm9000_init_dm9000 (struct net_device*) ;
 int dm9000_unmask_interrupts (struct board_info*) ;
 struct board_info* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int
dm9000_drv_resume(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);
 struct board_info *db = netdev_priv(ndev);

 if (ndev) {
  if (netif_running(ndev)) {


   if (!db->wake_state) {
    dm9000_init_dm9000(ndev);
    dm9000_unmask_interrupts(db);
   }

   netif_device_attach(ndev);
  }

  db->in_suspend = 0;
 }
 return 0;
}
