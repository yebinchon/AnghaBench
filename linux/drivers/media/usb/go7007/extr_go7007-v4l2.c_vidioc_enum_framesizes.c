
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;
struct v4l2_frmsizeenum {int index; TYPE_1__ discrete; int type; int pixel_format; } ;
struct go7007 {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 int get_resolution (struct go7007*,int*,int*) ;
 int valid_pixelformat (int ) ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_framesizes(struct file *filp, void *priv,
      struct v4l2_frmsizeenum *fsize)
{
 struct go7007 *go = video_drvdata(filp);
 int width, height;

 if (fsize->index > 2)
  return -EINVAL;

 if (!valid_pixelformat(fsize->pixel_format))
  return -EINVAL;

 get_resolution(go, &width, &height);
 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = (width >> fsize->index) & ~0xf;
 fsize->discrete.height = (height >> fsize->index) & ~0xf;
 return 0;
}
