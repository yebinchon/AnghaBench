
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int irq; } ;
struct grcan_priv {int napi; } ;


 int free_candev (struct net_device*) ;
 int irq_dispose_mapping (int ) ;
 struct grcan_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_candev (struct net_device*) ;

__attribute__((used)) static int grcan_remove(struct platform_device *ofdev)
{
 struct net_device *dev = platform_get_drvdata(ofdev);
 struct grcan_priv *priv = netdev_priv(dev);

 unregister_candev(dev);

 irq_dispose_mapping(dev->irq);
 netif_napi_del(&priv->napi);
 free_candev(dev);

 return 0;
}
