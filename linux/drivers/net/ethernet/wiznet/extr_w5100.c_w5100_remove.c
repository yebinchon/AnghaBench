
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_priv {int xfer_wq; int restart_work; int setrx_work; int link_irq; int link_gpio; int irq; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 int destroy_workqueue (int ) ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int flush_work (int *) ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ gpio_is_valid (int ) ;
 struct w5100_priv* netdev_priv (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 int w5100_hw_reset (struct w5100_priv*) ;

int w5100_remove(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);
 struct w5100_priv *priv = netdev_priv(ndev);

 w5100_hw_reset(priv);
 free_irq(priv->irq, ndev);
 if (gpio_is_valid(priv->link_gpio))
  free_irq(priv->link_irq, ndev);

 flush_work(&priv->setrx_work);
 flush_work(&priv->restart_work);
 destroy_workqueue(priv->xfer_wq);

 unregister_netdev(ndev);
 free_netdev(ndev);
 return 0;
}
