
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct TYPE_2__ {char* name; } ;
struct isp_video {TYPE_1__ video; } ;
struct file {int dummy; } ;


 char* ISP_VIDEO_DRIVER_NAME ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int strscpy (int ,char*,int) ;
 struct isp_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
isp_video_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
{
 struct isp_video *video = video_drvdata(file);

 strscpy(cap->driver, ISP_VIDEO_DRIVER_NAME, sizeof(cap->driver));
 strscpy(cap->card, video->video.name, sizeof(cap->card));
 strscpy(cap->bus_info, "media", sizeof(cap->bus_info));

 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OUTPUT
  | V4L2_CAP_STREAMING | V4L2_CAP_DEVICE_CAPS;


 return 0;
}
