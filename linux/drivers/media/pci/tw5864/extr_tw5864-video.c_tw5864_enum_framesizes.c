
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;
struct v4l2_frmsizeenum {scalar_t__ index; scalar_t__ pixel_format; TYPE_1__ discrete; int type; } ;
struct tw5864_input {scalar_t__ std; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ STD_NTSC ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 scalar_t__ V4L2_PIX_FMT_H264 ;
 struct tw5864_input* video_drvdata (struct file*) ;

__attribute__((used)) static int tw5864_enum_framesizes(struct file *file, void *priv,
      struct v4l2_frmsizeenum *fsize)
{
 struct tw5864_input *input = video_drvdata(file);

 if (fsize->index > 0)
  return -EINVAL;
 if (fsize->pixel_format != V4L2_PIX_FMT_H264)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = 704;
 fsize->discrete.height = input->std == STD_NTSC ? 480 : 576;

 return 0;
}
