
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; } ;
struct xvip_dma {int port; TYPE_3__* xdev; TYPE_1__ video; } ;
struct v4l2_fh {int vdev; } ;
struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_6__ {int v4l2_caps; TYPE_2__* dev; } ;
struct TYPE_5__ {int of_node; } ;


 int V4L2_CAP_DEVICE_CAPS ;
 int V4L2_CAP_STREAMING ;
 int snprintf (int ,int,char*,int ,int) ;
 int strscpy (int ,char*,int) ;
 struct xvip_dma* to_xvip_dma (int ) ;

__attribute__((used)) static int
xvip_dma_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
{
 struct v4l2_fh *vfh = file->private_data;
 struct xvip_dma *dma = to_xvip_dma(vfh->vdev);

 cap->capabilities = dma->xdev->v4l2_caps | V4L2_CAP_STREAMING |
       V4L2_CAP_DEVICE_CAPS;

 strscpy(cap->driver, "xilinx-vipp", sizeof(cap->driver));
 strscpy(cap->card, dma->video.name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%pOFn:%u",
   dma->xdev->dev->of_node, dma->port);

 return 0;
}
