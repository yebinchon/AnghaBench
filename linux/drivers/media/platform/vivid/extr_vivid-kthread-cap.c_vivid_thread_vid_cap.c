
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_2__ {unsigned int numerator; unsigned int denominator; } ;
struct vivid_dev {unsigned int cap_seq_offset; unsigned int cap_seq_count; int cap_seq_resync; unsigned long jiffies_vid_cap; int cap_stream_start; int cap_frame_period; scalar_t__ field_cap; int mutex; scalar_t__ vbi_cap_seq_start; scalar_t__ vbi_cap_seq_count; scalar_t__ vid_cap_seq_start; scalar_t__ vid_cap_seq_count; TYPE_1__ timeperframe_vid_cap; } ;


 unsigned int HZ ;
 unsigned long JIFFIES_RESYNC ;
 scalar_t__ V4L2_FIELD_ALTERNATE ;
 int do_div (unsigned int,unsigned int) ;
 int dprintk (struct vivid_dev*,int,char*) ;
 void* jiffies ;
 scalar_t__ kthread_should_stop () ;
 int ktime_get_ns () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_interruptible (unsigned int) ;
 int set_freezable () ;
 int try_to_freeze () ;
 int vivid_cap_update_frame_period (struct vivid_dev*) ;
 int vivid_thread_vid_cap_tick (struct vivid_dev*,int) ;

__attribute__((used)) static int vivid_thread_vid_cap(void *data)
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
 int dropped_bufs;

 dprintk(dev, 1, "Video Capture Thread Start\n");

 set_freezable();


 dev->cap_seq_offset = 0;
 dev->cap_seq_count = 0;
 dev->cap_seq_resync = 0;
 dev->jiffies_vid_cap = jiffies;
 dev->cap_stream_start = ktime_get_ns();
 vivid_cap_update_frame_period(dev);

 for (;;) {
  try_to_freeze();
  if (kthread_should_stop())
   break;

  mutex_lock(&dev->mutex);
  cur_jiffies = jiffies;
  if (dev->cap_seq_resync) {
   dev->jiffies_vid_cap = cur_jiffies;
   dev->cap_seq_offset = dev->cap_seq_count + 1;
   dev->cap_seq_count = 0;
   dev->cap_stream_start += dev->cap_frame_period *
       dev->cap_seq_offset;
   vivid_cap_update_frame_period(dev);
   dev->cap_seq_resync = 0;
  }
  numerator = dev->timeperframe_vid_cap.numerator;
  denominator = dev->timeperframe_vid_cap.denominator;

  if (dev->field_cap == V4L2_FIELD_ALTERNATE)
   denominator *= 2;


  jiffies_since_start = cur_jiffies - dev->jiffies_vid_cap;

  buffers_since_start = (u64)jiffies_since_start * denominator +
          (HZ * numerator) / 2;
  do_div(buffers_since_start, HZ * numerator);







  if (jiffies_since_start > JIFFIES_RESYNC) {
   dev->jiffies_vid_cap = cur_jiffies;
   dev->cap_seq_offset = buffers_since_start;
   buffers_since_start = 0;
  }
  dropped_bufs = buffers_since_start + dev->cap_seq_offset - dev->cap_seq_count;
  dev->cap_seq_count = buffers_since_start + dev->cap_seq_offset;
  dev->vid_cap_seq_count = dev->cap_seq_count - dev->vid_cap_seq_start;
  dev->vbi_cap_seq_count = dev->cap_seq_count - dev->vbi_cap_seq_start;

  vivid_thread_vid_cap_tick(dev, dropped_bufs);





  numerators_since_start = ++buffers_since_start * numerator;


  jiffies_since_start = jiffies - dev->jiffies_vid_cap;

  mutex_unlock(&dev->mutex);





  next_jiffies_since_start = numerators_since_start * HZ +
        denominator / 2;
  do_div(next_jiffies_since_start, denominator);

  if (next_jiffies_since_start < jiffies_since_start)
   next_jiffies_since_start = jiffies_since_start;

  wait_jiffies = next_jiffies_since_start - jiffies_since_start;
  schedule_timeout_interruptible(wait_jiffies ? wait_jiffies : 1);
 }
 dprintk(dev, 1, "Video Capture Thread End\n");
 return 0;
}
