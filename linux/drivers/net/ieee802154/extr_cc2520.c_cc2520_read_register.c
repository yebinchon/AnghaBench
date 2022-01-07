
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct spi_message {int status; } ;
struct cc2520_private {int buffer_mutex; TYPE_1__* spi; int * buf; } ;
struct TYPE_2__ {int dev; } ;


 int CC2520_CMD_MEMORY_READ ;
 int dev_dbg (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static int
cc2520_read_register(struct cc2520_private *priv, u8 reg, u8 *data)
{
 int status;
 struct spi_message msg;
 struct spi_transfer xfer1 = {
  .len = 0,
  .tx_buf = priv->buf,
  .rx_buf = priv->buf,
 };

 struct spi_transfer xfer2 = {
  .len = 1,
  .rx_buf = data,
 };

 spi_message_init(&msg);
 spi_message_add_tail(&xfer1, &msg);
 spi_message_add_tail(&xfer2, &msg);

 mutex_lock(&priv->buffer_mutex);
 priv->buf[xfer1.len++] = CC2520_CMD_MEMORY_READ;
 priv->buf[xfer1.len++] = reg;

 status = spi_sync(priv->spi, &msg);
 dev_dbg(&priv->spi->dev,
  "spi status = %d\n", status);
 if (msg.status)
  status = msg.status;

 mutex_unlock(&priv->buffer_mutex);

 return status;
}
