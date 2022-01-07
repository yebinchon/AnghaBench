
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct cx23885_dev {size_t board; scalar_t__ tuner_type; int pci; } ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ TUNER_ABSENT ;
 int V4L2_CAP_AUDIO ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 TYPE_1__* cx23885_boards ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
 struct v4l2_capability *cap)
{
 struct cx23885_dev *dev = video_drvdata(file);

 strscpy(cap->driver, "cx23885", sizeof(cap->driver));
 strscpy(cap->card, cx23885_boards[dev->board].name,
  sizeof(cap->card));
 sprintf(cap->bus_info, "PCIe:%s", pci_name(dev->pci));
 cap->capabilities = V4L2_CAP_READWRITE | V4L2_CAP_STREAMING |
       V4L2_CAP_AUDIO | V4L2_CAP_VBI_CAPTURE |
       V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VBI_CAPTURE |
       V4L2_CAP_DEVICE_CAPS;
 if (dev->tuner_type != TUNER_ABSENT)
  cap->capabilities |= V4L2_CAP_TUNER;
 return 0;
}
