
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1000_priv {int reg_base; struct kvaser_pci* priv; } ;
struct net_device {int name; } ;
struct kvaser_pci {int no_channels; int res_addr; TYPE_1__* pci_dev; int conf_addr; struct net_device** slave_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int ) ;
 int free_sja1000dev (struct net_device*) ;
 int kvaser_pci_disable_irq (struct net_device*) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int pci_iounmap (TYPE_1__*,int ) ;
 int unregister_sja1000dev (struct net_device*) ;

__attribute__((used)) static void kvaser_pci_del_chan(struct net_device *dev)
{
 struct sja1000_priv *priv;
 struct kvaser_pci *board;
 int i;

 if (!dev)
  return;
 priv = netdev_priv(dev);
 board = priv->priv;
 if (!board)
  return;

 dev_info(&board->pci_dev->dev, "Removing device %s\n",
   dev->name);


 kvaser_pci_disable_irq(dev);

 for (i = 0; i < board->no_channels - 1; i++) {
  if (board->slave_dev[i]) {
   dev_info(&board->pci_dev->dev, "Removing device %s\n",
     board->slave_dev[i]->name);
   unregister_sja1000dev(board->slave_dev[i]);
   free_sja1000dev(board->slave_dev[i]);
  }
 }
 unregister_sja1000dev(dev);

 pci_iounmap(board->pci_dev, priv->reg_base);
 pci_iounmap(board->pci_dev, board->conf_addr);
 pci_iounmap(board->pci_dev, board->res_addr);

 free_sja1000dev(dev);
}
