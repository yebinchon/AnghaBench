
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
struct v4l2_frmsizeenum {scalar_t__ pixel_format; int type; TYPE_1__ discrete; scalar_t__ index; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int height; int width; } ;
struct aspeed_video {TYPE_2__ pix_fmt; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 struct aspeed_video* video_drvdata (struct file*) ;

__attribute__((used)) static int aspeed_video_enum_framesizes(struct file *file, void *fh,
     struct v4l2_frmsizeenum *fsize)
{
 struct aspeed_video *video = video_drvdata(file);

 if (fsize->index)
  return -EINVAL;

 if (fsize->pixel_format != V4L2_PIX_FMT_JPEG)
  return -EINVAL;

 fsize->discrete.width = video->pix_fmt.width;
 fsize->discrete.height = video->pix_fmt.height;
 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;

 return 0;
}
