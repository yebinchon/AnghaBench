
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {scalar_t__ index; int std; int type; int name; } ;
struct TYPE_2__ {int tvnorms; } ;
struct stk1160 {TYPE_1__ vdev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ STK1160_MAX_INPUT ;
 scalar_t__ STK1160_SVIDEO_INPUT ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int sprintf (int ,char*,...) ;
 struct stk1160* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
    struct v4l2_input *i)
{
 struct stk1160 *dev = video_drvdata(file);

 if (i->index > STK1160_MAX_INPUT)
  return -EINVAL;


 if (i->index == STK1160_SVIDEO_INPUT)
  sprintf(i->name, "S-Video");
 else
  sprintf(i->name, "Composite%d", i->index);

 i->type = V4L2_INPUT_TYPE_CAMERA;
 i->std = dev->vdev.tvnorms;
 return 0;
}
