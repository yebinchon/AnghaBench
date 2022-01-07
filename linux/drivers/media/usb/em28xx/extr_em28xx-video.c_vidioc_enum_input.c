
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_input {unsigned int index; int audioset; scalar_t__ capabilities; int std; int type; int name; } ;
struct file {int dummy; } ;
struct em28xx {scalar_t__* amux_map; scalar_t__ is_webcam; TYPE_2__* v4l2; } ;
struct TYPE_6__ {size_t type; } ;
struct TYPE_4__ {int tvnorms; } ;
struct TYPE_5__ {TYPE_1__ vdev; } ;


 int EINVAL ;
 scalar_t__ EM28XX_AMUX_UNUSED ;
 size_t EM28XX_VMUX_TELEVISION ;
 TYPE_3__* INPUT (unsigned int) ;
 unsigned int MAX_EM28XX_INPUT ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_INPUT_TYPE_TUNER ;
 int * iname ;
 int strscpy (int ,int ,int) ;
 struct em28xx* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
        struct v4l2_input *i)
{
 struct em28xx *dev = video_drvdata(file);
 unsigned int n;
 int j;

 n = i->index;
 if (n >= MAX_EM28XX_INPUT)
  return -EINVAL;
 if (!INPUT(n)->type)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_CAMERA;

 strscpy(i->name, iname[INPUT(n)->type], sizeof(i->name));

 if (INPUT(n)->type == EM28XX_VMUX_TELEVISION)
  i->type = V4L2_INPUT_TYPE_TUNER;

 i->std = dev->v4l2->vdev.tvnorms;

 if (dev->is_webcam)
  i->capabilities = 0;


 i->audioset = 0;
 for (j = 0; j < MAX_EM28XX_INPUT; j++)
  if (dev->amux_map[j] != EM28XX_AMUX_UNUSED)
   i->audioset |= 1 << j;

 return 0;
}
