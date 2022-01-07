
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int card; int bus_info; int driver; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;


 int V4L2_CAP_AUDIO ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 char* pvr2_hdw_get_bus_info (struct pvr2_hdw*) ;
 char* pvr2_hdw_get_desc (struct pvr2_hdw*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int pvr2_querycap(struct file *file, void *priv, struct v4l2_capability *cap)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;

 strscpy(cap->driver, "pvrusb2", sizeof(cap->driver));
 strscpy(cap->bus_info, pvr2_hdw_get_bus_info(hdw),
  sizeof(cap->bus_info));
 strscpy(cap->card, pvr2_hdw_get_desc(hdw), sizeof(cap->card));
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_TUNER |
       V4L2_CAP_AUDIO | V4L2_CAP_RADIO |
       V4L2_CAP_READWRITE | V4L2_CAP_DEVICE_CAPS;
 return 0;
}
