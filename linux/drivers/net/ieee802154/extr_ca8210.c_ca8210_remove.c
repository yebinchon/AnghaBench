
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver_data; struct ca8210_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_priv {int * hw; scalar_t__ hw_registered; int sync_up; int sync_down; } ;
struct ca8210_platform_data {int irq_id; scalar_t__ extclockenable; } ;


 int CONFIG_IEEE802154_CA8210_DEBUGFS ;
 scalar_t__ IS_ENABLED (int ) ;
 int ca8210_config_extern_clk (struct ca8210_platform_data*,struct spi_device*,int ) ;
 int ca8210_dev_com_clear (int ) ;
 int ca8210_test_interface_clear (struct ca8210_priv*) ;
 int ca8210_unregister_ext_clock (struct spi_device*) ;
 int dev_info (TYPE_1__*,char*,...) ;
 int free_irq (int ,int ) ;
 int ieee802154_free_hw (int *) ;
 int ieee802154_unregister_hw (int *) ;
 int kfree (struct ca8210_platform_data*) ;
 struct ca8210_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ca8210_remove(struct spi_device *spi_device)
{
 struct ca8210_priv *priv;
 struct ca8210_platform_data *pdata;

 dev_info(&spi_device->dev, "Removing ca8210\n");

 pdata = spi_device->dev.platform_data;
 if (pdata) {
  if (pdata->extclockenable) {
   ca8210_unregister_ext_clock(spi_device);
   ca8210_config_extern_clk(pdata, spi_device, 0);
  }
  free_irq(pdata->irq_id, spi_device->dev.driver_data);
  kfree(pdata);
  spi_device->dev.platform_data = ((void*)0);
 }

 priv = spi_get_drvdata(spi_device);
 if (priv) {
  dev_info(
   &spi_device->dev,
   "sync_down = %d, sync_up = %d\n",
   priv->sync_down,
   priv->sync_up
  );
  ca8210_dev_com_clear(spi_device->dev.driver_data);
  if (priv->hw) {
   if (priv->hw_registered)
    ieee802154_unregister_hw(priv->hw);
   ieee802154_free_hw(priv->hw);
   priv->hw = ((void*)0);
   dev_info(
    &spi_device->dev,
    "Unregistered & freed ieee802154_hw.\n"
   );
  }
  if (IS_ENABLED(CONFIG_IEEE802154_CA8210_DEBUGFS))
   ca8210_test_interface_clear(priv);
 }

 return 0;
}
