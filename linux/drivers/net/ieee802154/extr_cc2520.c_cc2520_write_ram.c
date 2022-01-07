
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int len; int* tx_buf; int* rx_buf; } ;
struct spi_message {int status; } ;
struct cc2520_private {int* buf; int buffer_mutex; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int CC2520_CMD_MEMORY_WRITE ;
 int dev_dbg (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static int
cc2520_write_ram(struct cc2520_private *priv, u16 reg, u8 len, u8 *data)
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
  .tx_buf = data,
 };

 mutex_lock(&priv->buffer_mutex);
 priv->buf[xfer_head.len++] = (CC2520_CMD_MEMORY_WRITE |
      ((reg >> 8) & 0xff));
 priv->buf[xfer_head.len++] = reg & 0xff;

 spi_message_init(&msg);
 spi_message_add_tail(&xfer_head, &msg);
 spi_message_add_tail(&xfer_buf, &msg);

 status = spi_sync(priv->spi, &msg);
 dev_dbg(&priv->spi->dev, "spi status = %d\n", status);
 if (msg.status)
  status = msg.status;

 mutex_unlock(&priv->buffer_mutex);
 return status;
}
