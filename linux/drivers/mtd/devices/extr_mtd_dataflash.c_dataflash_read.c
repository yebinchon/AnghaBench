
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
typedef int u8 ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct spi_message {int actual_length; } ;
struct mtd_info {struct dataflash* priv; } ;
struct dataflash {unsigned int page_size; unsigned int page_offset; TYPE_1__* spi; int lock; int * command; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int dev; } ;


 int OP_READ_CONTINUOUS ;
 int dev_dbg (int *,char*,unsigned int,unsigned int,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
          size_t *retlen, u_char *buf)
{
 struct dataflash *priv = mtd->priv;
 struct spi_transfer x[2] = { };
 struct spi_message msg;
 unsigned int addr;
 u8 *command;
 int status;

 dev_dbg(&priv->spi->dev, "read 0x%x..0x%x\n",
    (unsigned int)from, (unsigned int)(from + len));


 addr = (((unsigned)from / priv->page_size) << priv->page_offset)
  + ((unsigned)from % priv->page_size);

 command = priv->command;

 dev_dbg(&priv->spi->dev, "READ: (%x) %x %x %x\n",
  command[0], command[1], command[2], command[3]);

 spi_message_init(&msg);

 x[0].tx_buf = command;
 x[0].len = 8;
 spi_message_add_tail(&x[0], &msg);

 x[1].rx_buf = buf;
 x[1].len = len;
 spi_message_add_tail(&x[1], &msg);

 mutex_lock(&priv->lock);





 command[0] = OP_READ_CONTINUOUS;
 command[1] = (u8)(addr >> 16);
 command[2] = (u8)(addr >> 8);
 command[3] = (u8)(addr >> 0);


 status = spi_sync(priv->spi, &msg);
 mutex_unlock(&priv->lock);

 if (status >= 0) {
  *retlen = msg.actual_length - 8;
  status = 0;
 } else
  dev_dbg(&priv->spi->dev, "read %x..%x --> %d\n",
   (unsigned)from, (unsigned)(from + len),
   status);
 return status;
}
