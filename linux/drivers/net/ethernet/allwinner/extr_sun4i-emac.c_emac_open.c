
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; int irq; int name; } ;
struct emac_board_info {int dev; } ;


 int EAGAIN ;
 int dev_dbg (int ,char*,int ) ;
 int emac_init_device (struct net_device*) ;
 int emac_interrupt ;
 int emac_mdio_probe (struct net_device*) ;
 int emac_reset (struct emac_board_info*) ;
 int free_irq (int ,struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifup (struct emac_board_info*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 scalar_t__ request_irq (int ,int *,int ,int ,struct net_device*) ;

__attribute__((used)) static int emac_open(struct net_device *dev)
{
 struct emac_board_info *db = netdev_priv(dev);
 int ret;

 if (netif_msg_ifup(db))
  dev_dbg(db->dev, "enabling %s\n", dev->name);

 if (request_irq(dev->irq, &emac_interrupt, 0, dev->name, dev))
  return -EAGAIN;


 emac_reset(db);
 emac_init_device(dev);

 ret = emac_mdio_probe(dev);
 if (ret < 0) {
  free_irq(dev->irq, dev);
  netdev_err(dev, "cannot probe MDIO bus\n");
  return ret;
 }

 phy_start(dev->phydev);
 netif_start_queue(dev);

 return 0;
}
