
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_jpegcompression {int dummy; } ;
struct gspca_dev {TYPE_1__* sd_desc; scalar_t__ usb_err; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* set_jcomp ) (struct gspca_dev*,struct v4l2_jpegcompression const*) ;} ;


 int stub1 (struct gspca_dev*,struct v4l2_jpegcompression const*) ;
 struct gspca_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_jpegcomp(struct file *file, void *priv,
   const struct v4l2_jpegcompression *jpegcomp)
{
 struct gspca_dev *gspca_dev = video_drvdata(file);

 gspca_dev->usb_err = 0;
 return gspca_dev->sd_desc->set_jcomp(gspca_dev, jpegcomp);
}
