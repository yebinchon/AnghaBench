
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int name; int release; int * v4l2_dev; } ;
struct TYPE_3__ {size_t type; int v4l2_dev; } ;
struct bttv {int id; int revision; scalar_t__ tuner_type; TYPE_1__ c; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ TUNER_ABSENT ;
 int VIDIOC_G_FREQUENCY ;
 int VIDIOC_G_TUNER ;
 int VIDIOC_S_FREQUENCY ;
 int VIDIOC_S_TUNER ;
 TYPE_2__* bttv_tvcards ;
 int snprintf (int ,int,char*,int,char*,char const*,int ) ;
 int v4l2_disable_ioctl (struct video_device*,int ) ;
 int video_device_release_empty ;
 int video_set_drvdata (struct video_device*,struct bttv*) ;

__attribute__((used)) static void vdev_init(struct bttv *btv,
        struct video_device *vfd,
        const struct video_device *template,
        const char *type_name)
{
 *vfd = *template;
 vfd->v4l2_dev = &btv->c.v4l2_dev;
 vfd->release = video_device_release_empty;
 video_set_drvdata(vfd, btv);
 snprintf(vfd->name, sizeof(vfd->name), "BT%d%s %s (%s)",
   btv->id, (btv->id==848 && btv->revision==0x12) ? "A" : "",
   type_name, bttv_tvcards[btv->c.type].name);
 if (btv->tuner_type == TUNER_ABSENT) {
  v4l2_disable_ioctl(vfd, VIDIOC_G_FREQUENCY);
  v4l2_disable_ioctl(vfd, VIDIOC_S_FREQUENCY);
  v4l2_disable_ioctl(vfd, VIDIOC_G_TUNER);
  v4l2_disable_ioctl(vfd, VIDIOC_S_TUNER);
 }
}
