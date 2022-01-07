
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_priv {int clk; } ;


 int clk_unregister (int ) ;
 int dev_info (TYPE_1__*,char*) ;
 void of_clk_del_provider (int ) ;
 struct ca8210_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void ca8210_unregister_ext_clock(struct spi_device *spi)
{
 struct ca8210_priv *priv = spi_get_drvdata(spi);

 if (!priv->clk)
  return

 of_clk_del_provider(spi->dev.of_node);
 clk_unregister(priv->clk);
 dev_info(&spi->dev, "External clock unregistered\n");
}
