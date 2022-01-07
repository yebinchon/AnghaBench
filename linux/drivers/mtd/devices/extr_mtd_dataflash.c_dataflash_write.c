
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_char ;
typedef unsigned int u8 ;
struct spi_transfer {unsigned int* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;
struct mtd_info {struct dataflash* priv; } ;
struct dataflash {unsigned int* command; unsigned int page_size; unsigned int page_offset; int lock; struct spi_device* spi; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int EIO ;
 unsigned int OP_COMPARE_BUF1 ;
 unsigned int OP_PROGRAM_VIA_BUF1 ;
 unsigned int OP_TRANSFER_BUF1 ;
 int dataflash_waitready (struct spi_device*) ;
 int dev_dbg (int *,char*,unsigned int,int,...) ;
 int dev_err (int *,char*,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 int spi_transfer_del (struct spi_transfer*) ;

__attribute__((used)) static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
    size_t * retlen, const u_char * buf)
{
 struct dataflash *priv = mtd->priv;
 struct spi_device *spi = priv->spi;
 struct spi_transfer x[2] = { };
 struct spi_message msg;
 unsigned int pageaddr, addr, offset, writelen;
 size_t remaining = len;
 u_char *writebuf = (u_char *) buf;
 int status = -EINVAL;
 u8 *command;

 dev_dbg(&spi->dev, "write 0x%x..0x%x\n",
  (unsigned int)to, (unsigned int)(to + len));

 spi_message_init(&msg);

 x[0].tx_buf = command = priv->command;
 x[0].len = 4;
 spi_message_add_tail(&x[0], &msg);

 pageaddr = ((unsigned)to / priv->page_size);
 offset = ((unsigned)to % priv->page_size);
 if (offset + len > priv->page_size)
  writelen = priv->page_size - offset;
 else
  writelen = len;

 mutex_lock(&priv->lock);
 while (remaining > 0) {
  dev_dbg(&spi->dev, "write @ %i:%i len=%i\n",
   pageaddr, offset, writelen);
  addr = pageaddr << priv->page_offset;


  if (writelen != priv->page_size) {
   command[0] = OP_TRANSFER_BUF1;
   command[1] = (addr & 0x00FF0000) >> 16;
   command[2] = (addr & 0x0000FF00) >> 8;
   command[3] = 0;

   dev_dbg(&spi->dev, "TRANSFER: (%x) %x %x %x\n",
    command[0], command[1], command[2], command[3]);

   status = spi_sync(spi, &msg);
   if (status < 0)
    dev_dbg(&spi->dev, "xfer %u -> %d\n",
     addr, status);

   (void) dataflash_waitready(priv->spi);
  }


  addr += offset;
  command[0] = OP_PROGRAM_VIA_BUF1;
  command[1] = (addr & 0x00FF0000) >> 16;
  command[2] = (addr & 0x0000FF00) >> 8;
  command[3] = (addr & 0x000000FF);

  dev_dbg(&spi->dev, "PROGRAM: (%x) %x %x %x\n",
   command[0], command[1], command[2], command[3]);

  x[1].tx_buf = writebuf;
  x[1].len = writelen;
  spi_message_add_tail(x + 1, &msg);
  status = spi_sync(spi, &msg);
  spi_transfer_del(x + 1);
  if (status < 0)
   dev_dbg(&spi->dev, "pgm %u/%u -> %d\n",
    addr, writelen, status);

  (void) dataflash_waitready(priv->spi);
  remaining = remaining - writelen;
  pageaddr++;
  offset = 0;
  writebuf += writelen;
  *retlen += writelen;

  if (remaining > priv->page_size)
   writelen = priv->page_size;
  else
   writelen = remaining;
 }
 mutex_unlock(&priv->lock);

 return status;
}
