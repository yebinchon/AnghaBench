
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {void const* tx_buf; void* rx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;
struct sja1105_private {struct spi_device* spidev; } ;


 int EMSGSIZE ;
 int SJA1105_SIZE_SPI_TRANSFER_MAX ;
 int dev_err (int *,char*,int,...) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int sja1105_spi_transfer(const struct sja1105_private *priv,
    const void *tx, void *rx, int size)
{
 struct spi_device *spi = priv->spidev;
 struct spi_transfer transfer = {
  .tx_buf = tx,
  .rx_buf = rx,
  .len = size,
 };
 struct spi_message msg;
 int rc;

 if (size > SJA1105_SIZE_SPI_TRANSFER_MAX) {
  dev_err(&spi->dev, "SPI message (%d) longer than max of %d\n",
   size, SJA1105_SIZE_SPI_TRANSFER_MAX);
  return -EMSGSIZE;
 }

 spi_message_init(&msg);
 spi_message_add_tail(&transfer, &msg);

 rc = spi_sync(spi, &msg);
 if (rc < 0) {
  dev_err(&spi->dev, "SPI transfer failed: %d\n", rc);
  return rc;
 }

 return rc;
}
