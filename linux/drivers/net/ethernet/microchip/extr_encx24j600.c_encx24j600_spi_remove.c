
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct encx24j600_priv {int ndev; } ;


 struct encx24j600_priv* dev_get_drvdata (int *) ;
 int free_netdev (int ) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int encx24j600_spi_remove(struct spi_device *spi)
{
 struct encx24j600_priv *priv = dev_get_drvdata(&spi->dev);

 unregister_netdev(priv->ndev);

 free_netdev(priv->ndev);

 return 0;
}
