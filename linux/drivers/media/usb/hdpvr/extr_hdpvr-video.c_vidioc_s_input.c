
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int video_input; } ;
struct hdpvr_device {scalar_t__ status; TYPE_1__ options; } ;
struct file {int dummy; } ;


 int CTRL_VIDEO_INPUT_VALUE ;
 int EBUSY ;
 int EINVAL ;
 unsigned int HDPVR_VIDEO_INPUTS ;
 scalar_t__ STATUS_IDLE ;
 int hdpvr_config_call (struct hdpvr_device*,int ,unsigned int) ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *_fh,
     unsigned int index)
{
 struct hdpvr_device *dev = video_drvdata(file);
 int retval;

 if (index >= HDPVR_VIDEO_INPUTS)
  return -EINVAL;

 if (dev->status != STATUS_IDLE)
  return -EBUSY;

 retval = hdpvr_config_call(dev, CTRL_VIDEO_INPUT_VALUE, index+1);
 if (!retval) {
  dev->options.video_input = index;
 }

 return retval;
}
