
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* driver; } ;
struct video_device {TYPE_2__ dev; int name; } ;
struct v4l2_capability {int bus_info; int card; int driver; } ;
struct tea5764_device {struct video_device vdev; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int name; } ;


 char* dev_name (TYPE_2__*) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 struct tea5764_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *v)
{
 struct tea5764_device *radio = video_drvdata(file);
 struct video_device *dev = &radio->vdev;

 strscpy(v->driver, dev->dev.driver->name, sizeof(v->driver));
 strscpy(v->card, dev->name, sizeof(v->card));
 snprintf(v->bus_info, sizeof(v->bus_info),
   "I2C:%s", dev_name(&dev->dev));
 return 0;
}
