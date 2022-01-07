
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct saa7134_dev {size_t board; scalar_t__ tuner_type; scalar_t__ has_rds; int pci; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ TUNER_ABSENT ;
 scalar_t__ UNSET ;
 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_RDS_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OVERLAY ;
 char* pci_name (int ) ;
 TYPE_1__* saa7134_boards ;
 scalar_t__ saa7134_no_overlay ;
 int sprintf (int ,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct saa7134_dev* video_drvdata (struct file*) ;

int saa7134_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct saa7134_dev *dev = video_drvdata(file);

 strscpy(cap->driver, "saa7134", sizeof(cap->driver));
 strscpy(cap->card, saa7134_boards[dev->board].name,
  sizeof(cap->card));
 sprintf(cap->bus_info, "PCI:%s", pci_name(dev->pci));
 cap->capabilities = V4L2_CAP_READWRITE | V4L2_CAP_STREAMING |
       V4L2_CAP_RADIO | V4L2_CAP_VIDEO_CAPTURE |
       V4L2_CAP_VBI_CAPTURE | V4L2_CAP_DEVICE_CAPS;
 if (dev->tuner_type != TUNER_ABSENT && dev->tuner_type != UNSET)
  cap->capabilities |= V4L2_CAP_TUNER;
 if (dev->has_rds)
  cap->capabilities |= V4L2_CAP_RDS_CAPTURE;
 if (saa7134_no_overlay <= 0)
  cap->capabilities |= V4L2_CAP_VIDEO_OVERLAY;

 return 0;
}
