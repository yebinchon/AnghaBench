
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_hw_freq_seek {scalar_t__ tuner; scalar_t__ seek_upward; int wrap_around; } ;
struct file {int f_flags; } ;
struct amradio_device {int curfreq; int* buffer; } ;


 int AMRADIO_GET_FREQ ;
 int AMRADIO_GET_READY_FLAG ;
 int AMRADIO_SET_SEARCH_DOWN ;
 int AMRADIO_SET_SEARCH_LVL ;
 int AMRADIO_SET_SEARCH_UP ;
 int AMRADIO_STOP_SEARCH ;
 int EINVAL ;
 int ENODATA ;
 int ERESTARTSYS ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 int amradio_send_cmd (struct amradio_device*,int ,int ,int*,int,int) ;
 int amradio_set_freq (struct amradio_device*,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ schedule_timeout_interruptible (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 struct amradio_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_hw_freq_seek(struct file *file, void *priv,
  const struct v4l2_hw_freq_seek *seek)
{
 static u8 buf[8] = {
  0x3d, 0x32, 0x0f, 0x08, 0x3d, 0x32, 0x0f, 0x08
 };
 struct amradio_device *radio = video_drvdata(file);
 unsigned long timeout;
 int retval;

 if (seek->tuner != 0 || !seek->wrap_around)
  return -EINVAL;

 if (file->f_flags & O_NONBLOCK)
  return -EWOULDBLOCK;

 retval = amradio_send_cmd(radio,
   AMRADIO_SET_SEARCH_LVL, 0, buf, 8, 0);
 if (retval)
  return retval;
 amradio_set_freq(radio, radio->curfreq);
 retval = amradio_send_cmd(radio,
  seek->seek_upward ? AMRADIO_SET_SEARCH_UP : AMRADIO_SET_SEARCH_DOWN,
  0, ((void*)0), 0, 0);
 if (retval)
  return retval;
 timeout = jiffies + msecs_to_jiffies(30000);
 for (;;) {
  if (time_after(jiffies, timeout)) {
   retval = -ENODATA;
   break;
  }
  if (schedule_timeout_interruptible(msecs_to_jiffies(10))) {
   retval = -ERESTARTSYS;
   break;
  }
  retval = amradio_send_cmd(radio, AMRADIO_GET_READY_FLAG,
    0, ((void*)0), 0, 1);
  if (retval)
   continue;
  amradio_send_cmd(radio, AMRADIO_GET_FREQ, 0, ((void*)0), 0, 1);
  if (radio->buffer[1] || radio->buffer[2]) {

   radio->curfreq = (radio->buffer[1] << 8) | radio->buffer[2];
   radio->curfreq = (radio->curfreq - 0x10) * 200;
   amradio_send_cmd(radio, AMRADIO_STOP_SEARCH,
     0, ((void*)0), 0, 0);
   amradio_set_freq(radio, radio->curfreq);
   retval = 0;
   break;
  }
 }
 amradio_send_cmd(radio, AMRADIO_STOP_SEARCH, 0, ((void*)0), 0, 0);
 amradio_set_freq(radio, radio->curfreq);
 return retval;
}
