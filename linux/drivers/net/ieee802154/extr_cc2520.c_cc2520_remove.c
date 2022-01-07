
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct cc2520_private {int hw; int fifop_irqwork; int buffer_mutex; } ;


 int flush_work (int *) ;
 int ieee802154_free_hw (int ) ;
 int ieee802154_unregister_hw (int ) ;
 int mutex_destroy (int *) ;
 struct cc2520_private* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int cc2520_remove(struct spi_device *spi)
{
 struct cc2520_private *priv = spi_get_drvdata(spi);

 mutex_destroy(&priv->buffer_mutex);
 flush_work(&priv->fifop_irqwork);

 ieee802154_unregister_hw(priv->hw);
 ieee802154_free_hw(priv->hw);

 return 0;
}
