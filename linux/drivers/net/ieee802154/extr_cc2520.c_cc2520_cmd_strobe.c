
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int* tx_buf; int* rx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct cc2520_private {int* buf; int buffer_mutex; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int dev_vdbg (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static int
cc2520_cmd_strobe(struct cc2520_private *priv, u8 cmd)
{
 int ret;
 u8 status = 0xff;
 struct spi_message msg;
 struct spi_transfer xfer = {
  .len = 0,
  .tx_buf = priv->buf,
  .rx_buf = priv->buf,
 };

 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);

 mutex_lock(&priv->buffer_mutex);
 priv->buf[xfer.len++] = cmd;
 dev_vdbg(&priv->spi->dev,
   "command strobe buf[0] = %02x\n",
   priv->buf[0]);

 ret = spi_sync(priv->spi, &msg);
 if (!ret)
  status = priv->buf[0];
 dev_vdbg(&priv->spi->dev,
   "buf[0] = %02x\n", priv->buf[0]);
 mutex_unlock(&priv->buffer_mutex);

 return ret;
}
