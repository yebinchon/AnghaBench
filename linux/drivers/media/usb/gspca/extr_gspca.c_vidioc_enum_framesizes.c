
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; } ;
struct v4l2_frmsizeenum {scalar_t__ pixel_format; scalar_t__ index; TYPE_2__ discrete; int type; } ;
struct TYPE_8__ {int nmodes; TYPE_3__* cam_mode; } ;
struct gspca_dev {TYPE_4__ cam; TYPE_1__* sd_desc; } ;
struct file {int dummy; } ;
typedef scalar_t__ __u32 ;
struct TYPE_7__ {scalar_t__ pixelformat; int height; int width; } ;
struct TYPE_5__ {int (* enum_framesizes ) (struct gspca_dev*,struct v4l2_frmsizeenum*) ;} ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 int stub1 (struct gspca_dev*,struct v4l2_frmsizeenum*) ;
 struct gspca_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_framesizes(struct file *file, void *priv,
      struct v4l2_frmsizeenum *fsize)
{
 struct gspca_dev *gspca_dev = video_drvdata(file);
 int i;
 __u32 index = 0;

 if (gspca_dev->sd_desc->enum_framesizes)
  return gspca_dev->sd_desc->enum_framesizes(gspca_dev, fsize);

 for (i = 0; i < gspca_dev->cam.nmodes; i++) {
  if (fsize->pixel_format !=
    gspca_dev->cam.cam_mode[i].pixelformat)
   continue;

  if (fsize->index == index) {
   fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
   fsize->discrete.width =
    gspca_dev->cam.cam_mode[i].width;
   fsize->discrete.height =
    gspca_dev->cam.cam_mode[i].height;
   return 0;
  }
  index++;
 }

 return -EINVAL;
}
