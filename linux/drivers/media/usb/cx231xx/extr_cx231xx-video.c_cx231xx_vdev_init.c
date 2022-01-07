
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int name; int * lock; int release; int * v4l2_dev; } ;
struct cx231xx {char* name; scalar_t__ tuner_type; int lock; int v4l2_dev; } ;


 scalar_t__ TUNER_ABSENT ;
 int VIDIOC_G_FREQUENCY ;
 int VIDIOC_G_TUNER ;
 int VIDIOC_S_FREQUENCY ;
 int VIDIOC_S_TUNER ;
 int snprintf (int ,int,char*,char*,char const*) ;
 int v4l2_disable_ioctl (struct video_device*,int ) ;
 int video_device_release_empty ;
 int video_set_drvdata (struct video_device*,struct cx231xx*) ;

__attribute__((used)) static void cx231xx_vdev_init(struct cx231xx *dev,
  struct video_device *vfd,
  const struct video_device *template,
  const char *type_name)
{
 *vfd = *template;
 vfd->v4l2_dev = &dev->v4l2_dev;
 vfd->release = video_device_release_empty;
 vfd->lock = &dev->lock;

 snprintf(vfd->name, sizeof(vfd->name), "%s %s", dev->name, type_name);

 video_set_drvdata(vfd, dev);
 if (dev->tuner_type == TUNER_ABSENT) {
  v4l2_disable_ioctl(vfd, VIDIOC_G_FREQUENCY);
  v4l2_disable_ioctl(vfd, VIDIOC_S_FREQUENCY);
  v4l2_disable_ioctl(vfd, VIDIOC_G_TUNER);
  v4l2_disable_ioctl(vfd, VIDIOC_S_TUNER);
 }
}
