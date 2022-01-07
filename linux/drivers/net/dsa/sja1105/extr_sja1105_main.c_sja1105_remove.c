
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct sja1105_private {int ds; } ;


 int dsa_unregister_switch (int ) ;
 struct sja1105_private* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int sja1105_remove(struct spi_device *spi)
{
 struct sja1105_private *priv = spi_get_drvdata(spi);

 dsa_unregister_switch(priv->ds);
 return 0;
}
