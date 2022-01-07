
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int name; } ;
struct board_info {int phy_poll; int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int ,char*,int ) ;
 int dm9000_shutdown (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 struct board_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_msg_ifdown (struct board_info*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int
dm9000_stop(struct net_device *ndev)
{
 struct board_info *db = netdev_priv(ndev);

 if (netif_msg_ifdown(db))
  dev_dbg(db->dev, "shutting down %s\n", ndev->name);

 cancel_delayed_work_sync(&db->phy_poll);

 netif_stop_queue(ndev);
 netif_carrier_off(ndev);


 free_irq(ndev->irq, ndev);

 dm9000_shutdown(ndev);

 return 0;
}
