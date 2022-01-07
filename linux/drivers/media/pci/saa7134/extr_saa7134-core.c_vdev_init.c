
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int name; int release; int * v4l2_dev; } ;
struct saa7134_dev {char* name; size_t board; int v4l2_dev; } ;
struct TYPE_2__ {char* name; } ;


 TYPE_1__* saa7134_boards ;
 int snprintf (int ,int,char*,char*,char*,char*) ;
 struct video_device* video_device_alloc () ;
 int video_device_release ;
 int video_set_drvdata (struct video_device*,struct saa7134_dev*) ;

__attribute__((used)) static struct video_device *vdev_init(struct saa7134_dev *dev,
          struct video_device *template,
          char *type)
{
 struct video_device *vfd;

 vfd = video_device_alloc();
 if (((void*)0) == vfd)
  return ((void*)0);
 *vfd = *template;
 vfd->v4l2_dev = &dev->v4l2_dev;
 vfd->release = video_device_release;
 snprintf(vfd->name, sizeof(vfd->name), "%s %s (%s)",
   dev->name, type, saa7134_boards[dev->board].name);
 video_set_drvdata(vfd, dev);
 return vfd;
}
