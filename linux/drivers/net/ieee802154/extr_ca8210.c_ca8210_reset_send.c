
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ca8210_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_priv {int promiscuous; int ca8210_is_awake; } ;
struct ca8210_platform_data {int gpio_reset; } ;


 int CA8210_SYNC_TIMEOUT ;
 int dev_crit (TYPE_1__*,char*) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int gpio_set_value (int ,int) ;
 int msecs_to_jiffies (int ) ;
 int msleep (unsigned int) ;
 int reinit_completion (int *) ;
 struct ca8210_priv* spi_get_drvdata (struct spi_device*) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static void ca8210_reset_send(struct spi_device *spi, unsigned int ms)
{
 struct ca8210_platform_data *pdata = spi->dev.platform_data;
 struct ca8210_priv *priv = spi_get_drvdata(spi);
 long status;

 gpio_set_value(pdata->gpio_reset, 0);
 reinit_completion(&priv->ca8210_is_awake);
 msleep(ms);
 gpio_set_value(pdata->gpio_reset, 1);
 priv->promiscuous = 0;


 status = wait_for_completion_interruptible_timeout(
  &priv->ca8210_is_awake,
  msecs_to_jiffies(CA8210_SYNC_TIMEOUT)
 );
 if (status == 0) {
  dev_crit(
   &spi->dev,
   "Fatal: No wakeup from ca8210 after reset!\n"
  );
 }

 dev_dbg(&spi->dev, "Reset the device\n");
}
