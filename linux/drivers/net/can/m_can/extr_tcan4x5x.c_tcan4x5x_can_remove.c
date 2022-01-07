
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcan4x5x_priv {int mcan_dev; int power; } ;
struct spi_device {int dummy; } ;


 int m_can_class_unregister (int ) ;
 struct tcan4x5x_priv* spi_get_drvdata (struct spi_device*) ;
 int tcan4x5x_power_enable (int ,int ) ;

__attribute__((used)) static int tcan4x5x_can_remove(struct spi_device *spi)
{
 struct tcan4x5x_priv *priv = spi_get_drvdata(spi);

 tcan4x5x_power_enable(priv->power, 0);

 m_can_class_unregister(priv->mcan_dev);

 return 0;
}
