
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int t ;
struct spi_transfer {int len; char* rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct TYPE_3__ {unsigned int byte_len; int flags; } ;
struct at25_data {int addrlen; int lock; TYPE_2__* spi; TYPE_1__ chip; } ;
typedef int ssize_t ;
struct TYPE_4__ {int dev; } ;


 int AT25_INSTR_BIT3 ;
 int AT25_READ ;
 int EE_INSTR_BIT3_IS_ADDR ;
 int EE_MAXADDRLEN ;
 int EINVAL ;
 int dev_dbg (int *,char*,size_t,unsigned int,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_2__*,struct spi_message*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int at25_ee_read(void *priv, unsigned int offset,
   void *val, size_t count)
{
 struct at25_data *at25 = priv;
 char *buf = val;
 u8 command[EE_MAXADDRLEN + 1];
 u8 *cp;
 ssize_t status;
 struct spi_transfer t[2];
 struct spi_message m;
 u8 instr;

 if (unlikely(offset >= at25->chip.byte_len))
  return -EINVAL;
 if ((offset + count) > at25->chip.byte_len)
  count = at25->chip.byte_len - offset;
 if (unlikely(!count))
  return -EINVAL;

 cp = command;

 instr = AT25_READ;
 if (at25->chip.flags & EE_INSTR_BIT3_IS_ADDR)
  if (offset >= (1U << (at25->addrlen * 8)))
   instr |= AT25_INSTR_BIT3;
 *cp++ = instr;


 switch (at25->addrlen) {
 default:
  *cp++ = offset >> 16;

 case 2:
  *cp++ = offset >> 8;

 case 1:
 case 0:
  *cp++ = offset >> 0;
 }

 spi_message_init(&m);
 memset(t, 0, sizeof(t));

 t[0].tx_buf = command;
 t[0].len = at25->addrlen + 1;
 spi_message_add_tail(&t[0], &m);

 t[1].rx_buf = buf;
 t[1].len = count;
 spi_message_add_tail(&t[1], &m);

 mutex_lock(&at25->lock);







 status = spi_sync(at25->spi, &m);
 dev_dbg(&at25->spi->dev, "read %zu bytes at %d --> %zd\n",
  count, offset, status);

 mutex_unlock(&at25->lock);
 return status;
}
