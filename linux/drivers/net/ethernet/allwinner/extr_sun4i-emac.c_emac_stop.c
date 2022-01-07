
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int phydev; int name; } ;
struct emac_board_info {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int emac_mdio_remove (struct net_device*) ;
 int emac_shutdown (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_msg_ifdown (struct emac_board_info*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (int ) ;

__attribute__((used)) static int emac_stop(struct net_device *ndev)
{
 struct emac_board_info *db = netdev_priv(ndev);

 if (netif_msg_ifdown(db))
  dev_dbg(db->dev, "shutting down %s\n", ndev->name);

 netif_stop_queue(ndev);
 netif_carrier_off(ndev);

 phy_stop(ndev->phydev);

 emac_mdio_remove(ndev);

 emac_shutdown(ndev);

 free_irq(ndev->irq, ndev);

 return 0;
}
