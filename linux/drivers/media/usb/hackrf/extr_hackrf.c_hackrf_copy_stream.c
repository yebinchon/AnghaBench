
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hackrf_dev {unsigned int sample; unsigned int sample_measured; int dev; scalar_t__ jiffies_next; } ;


 int MSECS ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 int memcpy (void*,void*,unsigned int) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int time_is_before_jiffies (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void hackrf_copy_stream(struct hackrf_dev *dev, void *dst, void *src,
          unsigned int src_len)
{
 memcpy(dst, src, src_len);


 if (unlikely(time_is_before_jiffies(dev->jiffies_next))) {

  unsigned int msecs = jiffies_to_msecs(jiffies -
    dev->jiffies_next + msecs_to_jiffies(10000UL));
  unsigned int samples = dev->sample - dev->sample_measured;

  dev->jiffies_next = jiffies + msecs_to_jiffies(10000UL);
  dev->sample_measured = dev->sample;
  dev_dbg(dev->dev, "slen=%u samples=%u msecs=%u sample rate=%lu\n",
    src_len, samples, msecs,
    samples * 1000UL / msecs);
 }


 dev->sample += src_len / 2;
}
