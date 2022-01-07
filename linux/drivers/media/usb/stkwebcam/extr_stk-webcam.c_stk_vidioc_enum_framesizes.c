
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; } ;
struct v4l2_frmsizeenum {scalar_t__ index; int pixel_format; TYPE_1__ discrete; int type; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int h; int w; } ;


 scalar_t__ ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;





 TYPE_2__* stk_sizes ;

__attribute__((used)) static int stk_vidioc_enum_framesizes(struct file *filp,
  void *priv, struct v4l2_frmsizeenum *frms)
{
 if (frms->index >= ARRAY_SIZE(stk_sizes))
  return -EINVAL;
 switch (frms->pixel_format) {
 case 132:
 case 131:
 case 129:
 case 128:
 case 130:
  frms->type = V4L2_FRMSIZE_TYPE_DISCRETE;
  frms->discrete.width = stk_sizes[frms->index].w;
  frms->discrete.height = stk_sizes[frms->index].h;
  return 0;
 default: return -EINVAL;
 }
}
