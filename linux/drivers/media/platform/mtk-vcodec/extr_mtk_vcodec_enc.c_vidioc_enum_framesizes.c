
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frmsizeenum {scalar_t__ index; scalar_t__ pixel_format; int stepwise; int type; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ fourcc; int stepwise; } ;


 int EINVAL ;
 int NUM_SUPPORTED_FRAMESIZE ;
 int V4L2_FRMSIZE_TYPE_STEPWISE ;
 TYPE_1__* mtk_venc_framesizes ;

__attribute__((used)) static int vidioc_enum_framesizes(struct file *file, void *fh,
      struct v4l2_frmsizeenum *fsize)
{
 int i = 0;

 if (fsize->index != 0)
  return -EINVAL;

 for (i = 0; i < NUM_SUPPORTED_FRAMESIZE; ++i) {
  if (fsize->pixel_format != mtk_venc_framesizes[i].fourcc)
   continue;

  fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
  fsize->stepwise = mtk_venc_framesizes[i].stepwise;
  return 0;
 }

 return -EINVAL;
}
