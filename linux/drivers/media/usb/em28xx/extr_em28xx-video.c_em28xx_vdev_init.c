
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int name; scalar_t__ tvnorms; int * lock; int * v4l2_dev; } ;
struct em28xx {TYPE_2__* intf; scalar_t__ is_webcam; int lock; TYPE_1__* v4l2; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int v4l2_dev; } ;


 char* dev_name (int *) ;
 int snprintf (int ,int,char*,char*,char const*) ;
 int video_set_drvdata (struct video_device*,struct em28xx*) ;

__attribute__((used)) static void em28xx_vdev_init(struct em28xx *dev,
        struct video_device *vfd,
        const struct video_device *template,
        const char *type_name)
{
 *vfd = *template;
 vfd->v4l2_dev = &dev->v4l2->v4l2_dev;
 vfd->lock = &dev->lock;
 if (dev->is_webcam)
  vfd->tvnorms = 0;

 snprintf(vfd->name, sizeof(vfd->name), "%s %s",
   dev_name(&dev->intf->dev), type_name);

 video_set_drvdata(vfd, dev);
}
