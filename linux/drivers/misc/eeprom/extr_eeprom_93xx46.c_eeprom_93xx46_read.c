
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u16 ;
struct spi_transfer {char* tx_buf; int len; int bits_per_word; char* rx_buf; int member_0; } ;
struct spi_message {int dummy; } ;
struct eeprom_93xx46_dev {unsigned int size; unsigned int addrlen; int lock; TYPE_1__* pdata; TYPE_2__* spi; } ;
struct TYPE_4__ {int dev; int max_speed_hz; } ;
struct TYPE_3__ {int (* finish ) (struct eeprom_93xx46_dev*) ;int (* prepare ) (struct eeprom_93xx46_dev*) ;} ;


 unsigned int OP_READ ;
 int dev_dbg (int *,char*,unsigned int,int ) ;
 int dev_err (int *,char*,size_t,int,int) ;
 scalar_t__ has_quirk_single_word_read (struct eeprom_93xx46_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ndelay (int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_2__*,struct spi_message*) ;
 int stub1 (struct eeprom_93xx46_dev*) ;
 int stub2 (struct eeprom_93xx46_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int eeprom_93xx46_read(void *priv, unsigned int off,
         void *val, size_t count)
{
 struct eeprom_93xx46_dev *edev = priv;
 char *buf = val;
 int err = 0;

 if (unlikely(off >= edev->size))
  return 0;
 if ((off + count) > edev->size)
  count = edev->size - off;
 if (unlikely(!count))
  return count;

 mutex_lock(&edev->lock);

 if (edev->pdata->prepare)
  edev->pdata->prepare(edev);

 while (count) {
  struct spi_message m;
  struct spi_transfer t[2] = { { 0 } };
  u16 cmd_addr = OP_READ << edev->addrlen;
  size_t nbytes = count;
  int bits;

  if (edev->addrlen == 7) {
   cmd_addr |= off & 0x7f;
   bits = 10;
   if (has_quirk_single_word_read(edev))
    nbytes = 1;
  } else {
   cmd_addr |= (off >> 1) & 0x3f;
   bits = 9;
   if (has_quirk_single_word_read(edev))
    nbytes = 2;
  }

  dev_dbg(&edev->spi->dev, "read cmd 0x%x, %d Hz\n",
   cmd_addr, edev->spi->max_speed_hz);

  spi_message_init(&m);

  t[0].tx_buf = (char *)&cmd_addr;
  t[0].len = 2;
  t[0].bits_per_word = bits;
  spi_message_add_tail(&t[0], &m);

  t[1].rx_buf = buf;
  t[1].len = count;
  t[1].bits_per_word = 8;
  spi_message_add_tail(&t[1], &m);

  err = spi_sync(edev->spi, &m);

  ndelay(250);

  if (err) {
   dev_err(&edev->spi->dev, "read %zu bytes at %d: err. %d\n",
    nbytes, (int)off, err);
   break;
  }

  buf += nbytes;
  off += nbytes;
  count -= nbytes;
 }

 if (edev->pdata->finish)
  edev->pdata->finish(edev);

 mutex_unlock(&edev->lock);

 return err;
}
