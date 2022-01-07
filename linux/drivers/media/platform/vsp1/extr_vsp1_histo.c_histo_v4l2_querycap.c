
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* vsp1; } ;
struct TYPE_4__ {char* name; } ;
struct vsp1_histogram {TYPE_3__ entity; TYPE_1__ video; } ;
struct v4l2_fh {int vdev; } ;
struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_5__ {int dev; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_META_CAPTURE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_VIDEO_OUTPUT_MPLANE ;
 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct vsp1_histogram* vdev_to_histo (int ) ;

__attribute__((used)) static int histo_v4l2_querycap(struct file *file, void *fh,
          struct v4l2_capability *cap)
{
 struct v4l2_fh *vfh = file->private_data;
 struct vsp1_histogram *histo = vdev_to_histo(vfh->vdev);

 cap->capabilities = V4L2_CAP_DEVICE_CAPS | V4L2_CAP_STREAMING
     | V4L2_CAP_VIDEO_CAPTURE_MPLANE
     | V4L2_CAP_VIDEO_OUTPUT_MPLANE
     | V4L2_CAP_META_CAPTURE;

 strscpy(cap->driver, "vsp1", sizeof(cap->driver));
 strscpy(cap->card, histo->video.name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   dev_name(histo->entity.vsp1->dev));

 return 0;
}
