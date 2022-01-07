
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int step_width; int step_height; int max_height; int max_width; int min_height; int min_width; } ;
struct v4l2_frmsizeenum {scalar_t__ index; scalar_t__ pixel_format; TYPE_1__ stepwise; int type; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ pixelformat; } ;


 int EINVAL ;
 unsigned int N_VIA_FMTS ;
 int QCIF_HEIGHT ;
 int QCIF_WIDTH ;
 int V4L2_FRMSIZE_TYPE_CONTINUOUS ;
 int VGA_HEIGHT ;
 int VGA_WIDTH ;
 TYPE_2__* via_formats ;

__attribute__((used)) static int viacam_enum_framesizes(struct file *filp, void *priv,
  struct v4l2_frmsizeenum *sizes)
{
 unsigned int i;

 if (sizes->index != 0)
  return -EINVAL;
 for (i = 0; i < N_VIA_FMTS; i++)
  if (sizes->pixel_format == via_formats[i].pixelformat)
   break;
 if (i >= N_VIA_FMTS)
  return -EINVAL;
 sizes->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
 sizes->stepwise.min_width = QCIF_WIDTH;
 sizes->stepwise.min_height = QCIF_HEIGHT;
 sizes->stepwise.max_width = VGA_WIDTH;
 sizes->stepwise.max_height = VGA_HEIGHT;
 sizes->stepwise.step_width = sizes->stepwise.step_height = 1;
 return 0;
}
