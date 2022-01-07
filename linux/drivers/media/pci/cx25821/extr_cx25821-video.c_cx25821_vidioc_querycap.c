
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct cx25821_dev {size_t board; int pci; } ;
struct cx25821_channel {struct cx25821_dev* dev; } ;
struct TYPE_2__ {char* name; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 TYPE_1__* cx25821_boards ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct cx25821_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int cx25821_vidioc_querycap(struct file *file, void *priv,
       struct v4l2_capability *cap)
{
 struct cx25821_channel *chan = video_drvdata(file);
 struct cx25821_dev *dev = chan->dev;

 strscpy(cap->driver, "cx25821", sizeof(cap->driver));
 strscpy(cap->card, cx25821_boards[dev->board].name, sizeof(cap->card));
 sprintf(cap->bus_info, "PCIe:%s", pci_name(dev->pci));
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OUTPUT |
       V4L2_CAP_READWRITE | V4L2_CAP_STREAMING |
       V4L2_CAP_DEVICE_CAPS;
 return 0;
}
