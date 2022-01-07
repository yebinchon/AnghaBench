
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_2__ {unsigned int numerator; unsigned int denominator; } ;
struct vivid_dev {int out_seq_offset; int out_seq_count; unsigned long jiffies_vid_out; int out_seq_resync; scalar_t__ field_out; int mutex; scalar_t__ vbi_out_seq_start; scalar_t__ vbi_out_seq_count; scalar_t__ vid_out_seq_start; scalar_t__ vid_out_seq_count; TYPE_1__ timeperframe_vid_out; scalar_t__ seq_wrap; } ;


 unsigned int HZ ;
 unsigned long JIFFIES_RESYNC ;
 scalar_t__ V4L2_FIELD_ALTERNATE ;
 int do_div (unsigned int,unsigned int) ;
 int dprintk (struct vivid_dev*,int,char*) ;
 void* jiffies ;
 scalar_t__ kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_interruptible (unsigned int) ;
 int set_freezable () ;
 int try_to_freeze () ;
 int vivid_thread_vid_out_tick (struct vivid_dev*) ;

__attribute__((used)) static int vivid_thread_vid_out(void *data)
{
 struct vivid_dev *dev = data;
 u64 numerators_since_start;
 u64 buffers_since_start;
 u64 next_jiffies_since_start;
 unsigned long jiffies_since_start;
 unsigned long cur_jiffies;
 unsigned wait_jiffies;
 unsigned numerator;
 unsigned denominator;

 dprintk(dev, 1, "Video Output Thread Start\n");

 set_freezable();


 dev->out_seq_offset = 0;
 if (dev->seq_wrap)
  dev->out_seq_count = 0xffffff80U;
 dev->jiffies_vid_out = jiffies;
 dev->vid_out_seq_start = dev->vbi_out_seq_start = 0;
 dev->out_seq_resync = 0;

 for (;;) {
  try_to_freeze();
  if (kthread_should_stop())
   break;

  mutex_lock(&dev->mutex);
  cur_jiffies = jiffies;
  if (dev->out_seq_resync) {
   dev->jiffies_vid_out = cur_jiffies;
   dev->out_seq_offset = dev->out_seq_count + 1;
   dev->out_seq_count = 0;
   dev->out_seq_resync = 0;
  }
  numerator = dev->timeperframe_vid_out.numerator;
  denominator = dev->timeperframe_vid_out.denominator;

  if (dev->field_out == V4L2_FIELD_ALTERNATE)
   denominator *= 2;


  jiffies_since_start = cur_jiffies - dev->jiffies_vid_out;

  buffers_since_start = (u64)jiffies_since_start * denominator +
          (HZ * numerator) / 2;
  do_div(buffers_since_start, HZ * numerator);







  if (jiffies_since_start > JIFFIES_RESYNC) {
   dev->jiffies_vid_out = cur_jiffies;
   dev->out_seq_offset = buffers_since_start;
   buffers_since_start = 0;
  }
  dev->out_seq_count = buffers_since_start + dev->out_seq_offset;
  dev->vid_out_seq_count = dev->out_seq_count - dev->vid_out_seq_start;
  dev->vbi_out_seq_count = dev->out_seq_count - dev->vbi_out_seq_start;

  vivid_thread_vid_out_tick(dev);
  mutex_unlock(&dev->mutex);





  numerators_since_start = buffers_since_start * numerator;


  jiffies_since_start = jiffies - dev->jiffies_vid_out;


  numerators_since_start += numerator;




  next_jiffies_since_start = numerators_since_start * HZ +
        denominator / 2;
  do_div(next_jiffies_since_start, denominator);

  if (next_jiffies_since_start < jiffies_since_start)
   next_jiffies_since_start = jiffies_since_start;

  wait_jiffies = next_jiffies_since_start - jiffies_since_start;
  schedule_timeout_interruptible(wait_jiffies ? wait_jiffies : 1);
 }
 dprintk(dev, 1, "Video Output Thread End\n");
 return 0;
}
