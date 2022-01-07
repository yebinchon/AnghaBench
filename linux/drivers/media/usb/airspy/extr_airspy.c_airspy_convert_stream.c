
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airspy {scalar_t__ pixelformat; unsigned int sample; unsigned int sample_measured; int dev; scalar_t__ jiffies_next; } ;


 int MSECS ;
 scalar_t__ V4L2_SDR_FMT_RU12LE ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 int memcpy (void*,void*,unsigned int) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int time_is_before_jiffies (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static unsigned int airspy_convert_stream(struct airspy *s,
  void *dst, void *src, unsigned int src_len)
{
 unsigned int dst_len;

 if (s->pixelformat == V4L2_SDR_FMT_RU12LE) {
  memcpy(dst, src, src_len);
  dst_len = src_len;
 } else {
  dst_len = 0;
 }


 if (unlikely(time_is_before_jiffies(s->jiffies_next))) {

  unsigned int msecs = jiffies_to_msecs(jiffies -
    s->jiffies_next + msecs_to_jiffies(10000UL));
  unsigned int samples = s->sample - s->sample_measured;

  s->jiffies_next = jiffies + msecs_to_jiffies(10000UL);
  s->sample_measured = s->sample;
  dev_dbg(s->dev, "slen=%u samples=%u msecs=%u sample rate=%lu\n",
    src_len, samples, msecs,
    samples * 1000UL / msecs);
 }


 s->sample += src_len / 2;

 return dst_len;
}
