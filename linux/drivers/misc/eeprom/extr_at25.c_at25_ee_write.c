
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {unsigned int byte_len; unsigned int page_size; int flags; } ;
struct at25_data {unsigned int addrlen; int lock; TYPE_2__* spi; TYPE_1__ chip; } ;
struct TYPE_5__ {int dev; } ;


 int AT25_INSTR_BIT3 ;
 int AT25_RDSR ;
 int AT25_SR_nRDY ;
 int AT25_WREN ;
 int AT25_WRITE ;
 int EE_INSTR_BIT3_IS_ADDR ;
 unsigned long EE_TIMEOUT ;
 int EFBIG ;
 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_err (int *,char*,unsigned int,unsigned int,int ) ;
 unsigned int io_limit ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int memcpy (int *,char const*,unsigned int) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_w8r8 (TYPE_2__*,int ) ;
 int spi_write (TYPE_2__*,int *,unsigned int) ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int at25_ee_write(void *priv, unsigned int off, void *val, size_t count)
{
 struct at25_data *at25 = priv;
 const char *buf = val;
 int status = 0;
 unsigned buf_size;
 u8 *bounce;

 if (unlikely(off >= at25->chip.byte_len))
  return -EFBIG;
 if ((off + count) > at25->chip.byte_len)
  count = at25->chip.byte_len - off;
 if (unlikely(!count))
  return -EINVAL;


 buf_size = at25->chip.page_size;
 if (buf_size > io_limit)
  buf_size = io_limit;
 bounce = kmalloc(buf_size + at25->addrlen + 1, GFP_KERNEL);
 if (!bounce)
  return -ENOMEM;




 mutex_lock(&at25->lock);
 do {
  unsigned long timeout, retries;
  unsigned segment;
  unsigned offset = (unsigned) off;
  u8 *cp = bounce;
  int sr;
  u8 instr;

  *cp = AT25_WREN;
  status = spi_write(at25->spi, cp, 1);
  if (status < 0) {
   dev_dbg(&at25->spi->dev, "WREN --> %d\n", status);
   break;
  }

  instr = AT25_WRITE;
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


  segment = buf_size - (offset % buf_size);
  if (segment > count)
   segment = count;
  memcpy(cp, buf, segment);
  status = spi_write(at25->spi, bounce,
    segment + at25->addrlen + 1);
  dev_dbg(&at25->spi->dev, "write %u bytes at %u --> %d\n",
   segment, offset, status);
  if (status < 0)
   break;






  timeout = jiffies + msecs_to_jiffies(EE_TIMEOUT);
  retries = 0;
  do {

   sr = spi_w8r8(at25->spi, AT25_RDSR);
   if (sr < 0 || (sr & AT25_SR_nRDY)) {
    dev_dbg(&at25->spi->dev,
     "rdsr --> %d (%02x)\n", sr, sr);

    msleep(1);
    continue;
   }
   if (!(sr & AT25_SR_nRDY))
    break;
  } while (retries++ < 3 || time_before_eq(jiffies, timeout));

  if ((sr < 0) || (sr & AT25_SR_nRDY)) {
   dev_err(&at25->spi->dev,
    "write %u bytes offset %u, timeout after %u msecs\n",
    segment, offset,
    jiffies_to_msecs(jiffies -
     (timeout - EE_TIMEOUT)));
   status = -ETIMEDOUT;
   break;
  }

  off += segment;
  buf += segment;
  count -= segment;

 } while (count > 0);

 mutex_unlock(&at25->lock);

 kfree(bounce);
 return status;
}
