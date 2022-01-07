
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int name; int * lock; int release; int * dev_parent; int * v4l2_dev; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {char* name; } ;
struct cx88_core {char* name; TYPE_1__ board; int lock; int v4l2_dev; } ;


 int snprintf (int ,int,char*,char*,char const*,char*) ;
 int video_device_release_empty ;

void cx88_vdev_init(struct cx88_core *core,
      struct pci_dev *pci,
      struct video_device *vfd,
      const struct video_device *template_,
      const char *type)
{
 *vfd = *template_;







 vfd->v4l2_dev = &core->v4l2_dev;
 vfd->dev_parent = &pci->dev;
 vfd->release = video_device_release_empty;
 vfd->lock = &core->lock;
 snprintf(vfd->name, sizeof(vfd->name), "%s %s (%s)",
   core->name, type, core->board.name);
}
