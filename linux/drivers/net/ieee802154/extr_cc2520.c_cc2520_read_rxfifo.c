
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int len; int* tx_buf; int* rx_buf; } ;
struct spi_message {int status; } ;
struct cc2520_private {int* buf; int buffer_mutex; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int CC2520_CMD_RXBUF ;
 int dev_vdbg (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static int
cc2520_read_rxfifo(struct cc2520_private *priv, u8 *data, u8 len)
{
 int status;
 struct spi_message msg;

 struct spi_transfer xfer_head = {
  .len = 0,
  .tx_buf = priv->buf,
  .rx_buf = priv->buf,
 };
 struct spi_transfer xfer_buf = {
  .len = len,
  .rx_buf = data,
 };

 spi_message_init(&msg);
 spi_message_add_tail(&xfer_head, &msg);
 spi_message_add_tail(&xfer_buf, &msg);

 mutex_lock(&priv->buffer_mutex);
 priv->buf[xfer_head.len++] = CC2520_CMD_RXBUF;

 dev_vdbg(&priv->spi->dev, "read rxfifo buf[0] = %02x\n", priv->buf[0]);
 dev_vdbg(&priv->spi->dev, "buf[1] = %02x\n", priv->buf[1]);

 status = spi_sync(priv->spi, &msg);
 dev_vdbg(&priv->spi->dev, "status = %d\n", status);
 if (msg.status)
  status = msg.status;
 dev_vdbg(&priv->spi->dev, "status = %d\n", status);
 dev_vdbg(&priv->spi->dev,
   "return status buf[0] = %02x\n", priv->buf[0]);
 dev_vdbg(&priv->spi->dev, "length buf[1] = %02x\n", priv->buf[1]);

 mutex_unlock(&priv->buffer_mutex);

 return status;
}
