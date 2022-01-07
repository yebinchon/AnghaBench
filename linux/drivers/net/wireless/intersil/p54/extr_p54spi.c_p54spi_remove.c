
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct p54s_priv {int hw; int mutex; int firmware; } ;


 int free_irq (int ,struct spi_device*) ;
 int gpio_free (int ) ;
 int gpio_to_irq (int ) ;
 int mutex_destroy (int *) ;
 int p54_free_common (int ) ;
 int p54_unregister_common (int ) ;
 int p54spi_gpio_irq ;
 int p54spi_gpio_power ;
 int release_firmware (int ) ;
 struct p54s_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int p54spi_remove(struct spi_device *spi)
{
 struct p54s_priv *priv = spi_get_drvdata(spi);

 p54_unregister_common(priv->hw);

 free_irq(gpio_to_irq(p54spi_gpio_irq), spi);

 gpio_free(p54spi_gpio_power);
 gpio_free(p54spi_gpio_irq);
 release_firmware(priv->firmware);

 mutex_destroy(&priv->mutex);

 p54_free_common(priv->hw);

 return 0;
}
