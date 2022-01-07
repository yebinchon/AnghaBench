
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
struct vsp1_video {TYPE_2__* vsp1; TYPE_1__ video; } ;
struct v4l2_fh {int vdev; } ;
struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_4__ {int dev; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_VIDEO_OUTPUT_MPLANE ;
 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct vsp1_video* to_vsp1_video (int ) ;

__attribute__((used)) static int
vsp1_video_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
{
 struct v4l2_fh *vfh = file->private_data;
 struct vsp1_video *video = to_vsp1_video(vfh->vdev);

 cap->capabilities = V4L2_CAP_DEVICE_CAPS | V4L2_CAP_STREAMING
     | V4L2_CAP_VIDEO_CAPTURE_MPLANE
     | V4L2_CAP_VIDEO_OUTPUT_MPLANE;


 strscpy(cap->driver, "vsp1", sizeof(cap->driver));
 strscpy(cap->card, video->video.name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   dev_name(video->vsp1->dev));

 return 0;
}
