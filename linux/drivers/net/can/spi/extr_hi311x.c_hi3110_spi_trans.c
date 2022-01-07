
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int cs_change; int rx_buf; int tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;
struct hi3110_priv {int spi_rx_buf; int spi_tx_buf; } ;


 int dev_err (int *,char*,int) ;
 struct hi3110_priv* spi_get_drvdata (struct spi_device*) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int hi3110_spi_trans(struct spi_device *spi, int len)
{
 struct hi3110_priv *priv = spi_get_drvdata(spi);
 struct spi_transfer t = {
  .tx_buf = priv->spi_tx_buf,
  .rx_buf = priv->spi_rx_buf,
  .len = len,
  .cs_change = 0,
 };
 struct spi_message m;
 int ret;

 spi_message_init(&m);
 spi_message_add_tail(&t, &m);

 ret = spi_sync(spi, &m);

 if (ret)
  dev_err(&spi->dev, "spi transfer failed: ret = %d\n", ret);
 return ret;
}
