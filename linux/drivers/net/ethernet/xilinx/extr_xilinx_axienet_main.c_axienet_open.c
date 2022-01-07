
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; int dev; } ;
struct axienet_local {scalar_t__ tx_irq; scalar_t__ rx_irq; scalar_t__ eth_irq; TYPE_2__* dev; int dma_err_tasklet; int phylink; TYPE_1__* mii_bus; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {int mdio_lock; } ;


 int IRQF_SHARED ;
 int axienet_device_reset (struct net_device*) ;
 int axienet_dma_err_handler ;
 int axienet_eth_irq ;
 int axienet_mdio_disable (struct axienet_local*) ;
 int axienet_mdio_enable (struct axienet_local*) ;
 int axienet_rx_irq ;
 int axienet_tx_irq ;
 int dev_dbg (int *,char*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int free_irq (scalar_t__,struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct axienet_local* netdev_priv (struct net_device*) ;
 int phylink_disconnect_phy (int ) ;
 int phylink_of_phy_connect (int ,int ,int ) ;
 int phylink_start (int ) ;
 int phylink_stop (int ) ;
 int request_irq (scalar_t__,int ,int ,int ,struct net_device*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int axienet_open(struct net_device *ndev)
{
 int ret;
 struct axienet_local *lp = netdev_priv(ndev);

 dev_dbg(&ndev->dev, "axienet_open()\n");







 mutex_lock(&lp->mii_bus->mdio_lock);
 axienet_mdio_disable(lp);
 axienet_device_reset(ndev);
 ret = axienet_mdio_enable(lp);
 mutex_unlock(&lp->mii_bus->mdio_lock);
 if (ret < 0)
  return ret;

 ret = phylink_of_phy_connect(lp->phylink, lp->dev->of_node, 0);
 if (ret) {
  dev_err(lp->dev, "phylink_of_phy_connect() failed: %d\n", ret);
  return ret;
 }

 phylink_start(lp->phylink);


 tasklet_init(&lp->dma_err_tasklet, axienet_dma_err_handler,
       (unsigned long) lp);


 ret = request_irq(lp->tx_irq, axienet_tx_irq, IRQF_SHARED,
     ndev->name, ndev);
 if (ret)
  goto err_tx_irq;

 ret = request_irq(lp->rx_irq, axienet_rx_irq, IRQF_SHARED,
     ndev->name, ndev);
 if (ret)
  goto err_rx_irq;

 if (lp->eth_irq > 0) {
  ret = request_irq(lp->eth_irq, axienet_eth_irq, IRQF_SHARED,
      ndev->name, ndev);
  if (ret)
   goto err_eth_irq;
 }

 return 0;

err_eth_irq:
 free_irq(lp->rx_irq, ndev);
err_rx_irq:
 free_irq(lp->tx_irq, ndev);
err_tx_irq:
 phylink_stop(lp->phylink);
 phylink_disconnect_phy(lp->phylink);
 tasklet_kill(&lp->dma_err_tasklet);
 dev_err(lp->dev, "request_irq() failed\n");
 return ret;
}
