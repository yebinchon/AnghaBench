
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* spi; } ;
struct encx24j600_priv {TYPE_2__ ctx; } ;
struct TYPE_3__ {int irq; } ;


 int free_irq (int ,struct encx24j600_priv*) ;
 struct encx24j600_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int encx24j600_stop(struct net_device *dev)
{
 struct encx24j600_priv *priv = netdev_priv(dev);

 netif_stop_queue(dev);
 free_irq(priv->ctx.spi->irq, priv);
 return 0;
}
