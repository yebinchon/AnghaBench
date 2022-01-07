
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct msi2500_dev {int next_sample; int pixelformat; unsigned int sample; int dev; scalar_t__ jiffies_next; } ;
typedef int s8 ;
typedef int s16 ;


 int MSECS ;






 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int dev_dbg_ratelimited (int ,char*,int,...) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int time_is_before_jiffies (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int msi2500_convert_stream(struct msi2500_dev *dev, u8 *dst, u8 *src,
      unsigned int src_len)
{
 unsigned int i, j, transactions, dst_len = 0;
 u32 sample[3];


 transactions = src_len / 1024;

 for (i = 0; i < transactions; i++) {
  sample[i] = src[3] << 24 | src[2] << 16 | src[1] << 8 |
    src[0] << 0;
  if (i == 0 && dev->next_sample != sample[0]) {
   dev_dbg_ratelimited(dev->dev,
         "%d samples lost, %d %08x:%08x\n",
         sample[0] - dev->next_sample,
         src_len, dev->next_sample,
         sample[0]);
  }





  dev_dbg_ratelimited(dev->dev, "%*ph\n", 12, &src[4]);

  src += 16;

  switch (dev->pixelformat) {
  case 128:
  {
   s8 *s8src = (s8 *)src;
   u8 *u8dst = (u8 *)dst;

   for (j = 0; j < 1008; j++)
    *u8dst++ = *s8src++ + 128;

   src += 1008;
   dst += 1008;
   dst_len += 1008;
   dev->next_sample = sample[i] + 504;
   break;
  }
  case 129:
  {
   s16 *s16src = (s16 *)src;
   u16 *u16dst = (u16 *)dst;
   struct {signed int x:14; } se;
   unsigned int utmp;

   for (j = 0; j < 1008; j += 2) {

    se.x = *s16src++;

    utmp = se.x + 8192;

    *u16dst++ = utmp << 2 | utmp >> 12;
   }

   src += 1008;
   dst += 1008;
   dst_len += 1008;
   dev->next_sample = sample[i] + 252;
   break;
  }
  case 133:

   dev_dbg_ratelimited(dev->dev, "%*ph\n", 24, &src[1000]);
   memcpy(dst, src, 984);
   src += 984 + 24;
   dst += 984;
   dst_len += 984;
   dev->next_sample = sample[i] + 384;
   break;
  case 130:
   memcpy(dst, src, 1008);
   src += 1008;
   dst += 1008;
   dst_len += 1008;
   dev->next_sample = sample[i] + 504;
   break;
  case 132:
   memcpy(dst, src, 1008);
   src += 1008;
   dst += 1008;
   dst_len += 1008;
   dev->next_sample = sample[i] + 336;
   break;
  case 131:
   memcpy(dst, src, 1008);
   src += 1008;
   dst += 1008;
   dst_len += 1008;
   dev->next_sample = sample[i] + 252;
   break;
  default:
   break;
  }
 }


 if (unlikely(time_is_before_jiffies(dev->jiffies_next))) {

  unsigned int msecs = jiffies_to_msecs(jiffies -
    dev->jiffies_next + msecs_to_jiffies(10000UL));
  unsigned int samples = dev->next_sample - dev->sample;

  dev->jiffies_next = jiffies + msecs_to_jiffies(10000UL);
  dev->sample = dev->next_sample;
  dev_dbg(dev->dev, "size=%u samples=%u msecs=%u sample rate=%lu\n",
   src_len, samples, msecs,
   samples * 1000UL / msecs);
 }

 return dst_len;
}
