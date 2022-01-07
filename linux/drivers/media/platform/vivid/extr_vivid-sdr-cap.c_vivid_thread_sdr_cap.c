
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vivid_dev {int sdr_cap_seq_offset; unsigned long jiffies_sdr_cap; int sdr_cap_seq_resync; int sdr_cap_seq_count; int sdr_adc_freq; int mutex; scalar_t__ seq_wrap; } ;


 int HZ ;
 unsigned long JIFFIES_RESYNC ;
 int SDR_CAP_SAMPLES_PER_BUF ;
 int do_div (int,int) ;
 int dprintk (struct vivid_dev*,int,char*) ;
 void* jiffies ;
 scalar_t__ kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_interruptible (unsigned int) ;
 int set_freezable () ;
 int try_to_freeze () ;
 int vivid_thread_sdr_cap_tick (struct vivid_dev*) ;

__attribute__((used)) static int vivid_thread_sdr_cap(void *data)
{
 struct vivid_dev *dev = data;
 u64 samples_since_start;
 u64 buffers_since_start;
 u64 next_jiffies_since_start;
 unsigned long jiffies_since_start;
 unsigned long cur_jiffies;
 unsigned wait_jiffies;

 dprintk(dev, 1, "SDR Capture Thread Start\n");

 set_freezable();


 dev->sdr_cap_seq_offset = 0;
 if (dev->seq_wrap)
  dev->sdr_cap_seq_offset = 0xffffff80U;
 dev->jiffies_sdr_cap = jiffies;
 dev->sdr_cap_seq_resync = 0;

 for (;;) {
  try_to_freeze();
  if (kthread_should_stop())
   break;

  mutex_lock(&dev->mutex);
  cur_jiffies = jiffies;
  if (dev->sdr_cap_seq_resync) {
   dev->jiffies_sdr_cap = cur_jiffies;
   dev->sdr_cap_seq_offset = dev->sdr_cap_seq_count + 1;
   dev->sdr_cap_seq_count = 0;
   dev->sdr_cap_seq_resync = 0;
  }

  jiffies_since_start = cur_jiffies - dev->jiffies_sdr_cap;

  buffers_since_start =
   (u64)jiffies_since_start * dev->sdr_adc_freq +
          (HZ * SDR_CAP_SAMPLES_PER_BUF) / 2;
  do_div(buffers_since_start, HZ * SDR_CAP_SAMPLES_PER_BUF);







  if (jiffies_since_start > JIFFIES_RESYNC) {
   dev->jiffies_sdr_cap = cur_jiffies;
   dev->sdr_cap_seq_offset = buffers_since_start;
   buffers_since_start = 0;
  }
  dev->sdr_cap_seq_count =
   buffers_since_start + dev->sdr_cap_seq_offset;

  vivid_thread_sdr_cap_tick(dev);
  mutex_unlock(&dev->mutex);





  samples_since_start = buffers_since_start * SDR_CAP_SAMPLES_PER_BUF;


  jiffies_since_start = jiffies - dev->jiffies_sdr_cap;


  samples_since_start += SDR_CAP_SAMPLES_PER_BUF;




  next_jiffies_since_start = samples_since_start * HZ +
        dev->sdr_adc_freq / 2;
  do_div(next_jiffies_since_start, dev->sdr_adc_freq);

  if (next_jiffies_since_start < jiffies_since_start)
   next_jiffies_since_start = jiffies_since_start;

  wait_jiffies = next_jiffies_since_start - jiffies_since_start;
  schedule_timeout_interruptible(wait_jiffies ? wait_jiffies : 1);
 }
 dprintk(dev, 1, "SDR Capture Thread End\n");
 return 0;
}
