
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_enum_dv_timings {size_t index; int timings; int reserved; } ;
struct hdpvr_fh {int legacy_mode; } ;
struct TYPE_2__ {scalar_t__ video_input; } ;
struct hdpvr_device {TYPE_1__ options; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENODATA ;
 int * hdpvr_dv_timings ;
 int memset (int ,int ,int) ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_dv_timings(struct file *file, void *_fh,
        struct v4l2_enum_dv_timings *timings)
{
 struct hdpvr_device *dev = video_drvdata(file);
 struct hdpvr_fh *fh = _fh;

 fh->legacy_mode = 0;
 memset(timings->reserved, 0, sizeof(timings->reserved));
 if (dev->options.video_input)
  return -ENODATA;
 if (timings->index >= ARRAY_SIZE(hdpvr_dv_timings))
  return -EINVAL;
 timings->timings = hdpvr_dv_timings[timings->index];
 return 0;
}
