
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int irq; } ;
struct enc28j60_net {int netdev; } ;


 int free_irq (int ,struct enc28j60_net*) ;
 int free_netdev (int ) ;
 struct enc28j60_net* spi_get_drvdata (struct spi_device*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int enc28j60_remove(struct spi_device *spi)
{
 struct enc28j60_net *priv = spi_get_drvdata(spi);

 unregister_netdev(priv->netdev);
 free_irq(spi->irq, priv);
 free_netdev(priv->netdev);

 return 0;
}
