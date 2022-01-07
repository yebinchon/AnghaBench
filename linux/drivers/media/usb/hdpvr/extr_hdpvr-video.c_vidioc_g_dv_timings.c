
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_dv_timings {int dummy; } ;
struct hdpvr_fh {int legacy_mode; } ;
struct TYPE_2__ {scalar_t__ video_input; } ;
struct hdpvr_device {struct v4l2_dv_timings cur_dv_timings; TYPE_1__ options; } ;
struct file {int dummy; } ;


 int ENODATA ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_dv_timings(struct file *file, void *_fh,
        struct v4l2_dv_timings *timings)
{
 struct hdpvr_device *dev = video_drvdata(file);
 struct hdpvr_fh *fh = _fh;

 fh->legacy_mode = 0;
 if (dev->options.video_input)
  return -ENODATA;
 *timings = dev->cur_dv_timings;
 return 0;
}
