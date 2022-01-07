
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {int link_irq; int link_gpio; int irq; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ gpio_is_valid (int ) ;
 struct w5300_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;
 int w5300_hw_reset (struct w5300_priv*) ;

__attribute__((used)) static int w5300_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct w5300_priv *priv = netdev_priv(ndev);

 w5300_hw_reset(priv);
 free_irq(priv->irq, ndev);
 if (gpio_is_valid(priv->link_gpio))
  free_irq(priv->link_irq, ndev);

 unregister_netdev(ndev);
 free_netdev(ndev);
 return 0;
}
