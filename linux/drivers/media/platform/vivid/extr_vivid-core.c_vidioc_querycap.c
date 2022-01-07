
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct vivid_dev {int vid_cap_caps; int vid_out_caps; int vbi_cap_caps; int vbi_out_caps; int radio_rx_caps; int radio_tx_caps; int sdr_cap_caps; TYPE_1__ v4l2_dev; } ;
struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct vivid_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct vivid_dev *dev = video_drvdata(file);

 strscpy(cap->driver, "vivid", sizeof(cap->driver));
 strscpy(cap->card, "vivid", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:%s", dev->v4l2_dev.name);

 cap->capabilities = dev->vid_cap_caps | dev->vid_out_caps |
  dev->vbi_cap_caps | dev->vbi_out_caps |
  dev->radio_rx_caps | dev->radio_tx_caps |
  dev->sdr_cap_caps | V4L2_CAP_DEVICE_CAPS;
 return 0;
}
