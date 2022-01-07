
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct ks8851_net {int netdev; int vdd_io; int vdd_reg; int gpio; } ;


 int dev_info (int *,char*) ;
 int free_netdev (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 scalar_t__ netif_msg_drv (struct ks8851_net*) ;
 int regulator_disable (int ) ;
 struct ks8851_net* spi_get_drvdata (struct spi_device*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int ks8851_remove(struct spi_device *spi)
{
 struct ks8851_net *priv = spi_get_drvdata(spi);

 if (netif_msg_drv(priv))
  dev_info(&spi->dev, "remove\n");

 unregister_netdev(priv->netdev);
 if (gpio_is_valid(priv->gpio))
  gpio_set_value(priv->gpio, 0);
 regulator_disable(priv->vdd_reg);
 regulator_disable(priv->vdd_io);
 free_netdev(priv->netdev);

 return 0;
}
