
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int name; int * lock; int release; int * v4l2_dev; } ;
struct tm6000_core {char* name; int lock; int v4l2_dev; } ;


 int snprintf (int ,int,char*,char*,char const*) ;
 int video_device_release_empty ;
 int video_set_drvdata (struct video_device*,struct tm6000_core*) ;

__attribute__((used)) static void vdev_init(struct tm6000_core *dev,
  struct video_device *vfd,
  const struct video_device
  *template, const char *type_name)
{
 *vfd = *template;
 vfd->v4l2_dev = &dev->v4l2_dev;
 vfd->release = video_device_release_empty;
 vfd->lock = &dev->lock;

 snprintf(vfd->name, sizeof(vfd->name), "%s %s", dev->name, type_name);

 video_set_drvdata(vfd, dev);
}
