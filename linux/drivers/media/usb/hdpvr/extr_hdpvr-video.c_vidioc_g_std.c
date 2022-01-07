
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct hdpvr_fh {int legacy_mode; } ;
struct TYPE_2__ {scalar_t__ video_input; } ;
struct hdpvr_device {int cur_std; TYPE_1__ options; } ;
struct file {int dummy; } ;


 int ENODATA ;
 scalar_t__ HDPVR_COMPONENT ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *_fh,
   v4l2_std_id *std)
{
 struct hdpvr_device *dev = video_drvdata(file);
 struct hdpvr_fh *fh = _fh;

 if (!fh->legacy_mode && dev->options.video_input == HDPVR_COMPONENT)
  return -ENODATA;
 *std = dev->cur_std;
 return 0;
}
