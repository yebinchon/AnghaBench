
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_mbus_code_enum {int code; int index; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct ceu_mbus_fmt {int mbus_code; int bps; int swapped; int bpp; void* fmt_order_swap; void* fmt_order; } ;
struct ceu_subdev {struct v4l2_subdev* v4l2_sd; struct ceu_mbus_fmt mbus_fmt; } ;
struct ceu_device {struct ceu_subdev* sd; } ;


 void* CEU_CAMCR_DTARY_8_UYVY ;
 void* CEU_CAMCR_DTARY_8_VYUY ;
 void* CEU_CAMCR_DTARY_8_YUYV ;
 void* CEU_CAMCR_DTARY_8_YVYU ;
 int ENXIO ;




 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_mbus_code ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_mbus_code_enum*) ;

__attribute__((used)) static int ceu_init_mbus_fmt(struct ceu_device *ceudev)
{
 struct ceu_subdev *ceu_sd = ceudev->sd;
 struct ceu_mbus_fmt *mbus_fmt = &ceu_sd->mbus_fmt;
 struct v4l2_subdev *v4l2_sd = ceu_sd->v4l2_sd;
 bool yuyv_bus_fmt = 0;

 struct v4l2_subdev_mbus_code_enum sd_mbus_fmt = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .index = 0,
 };


 while (!yuyv_bus_fmt &&
        !v4l2_subdev_call(v4l2_sd, pad, enum_mbus_code,
     ((void*)0), &sd_mbus_fmt)) {
  switch (sd_mbus_fmt.code) {
  case 129:
  case 128:
  case 131:
  case 130:
   yuyv_bus_fmt = 1;
   break;
  default:






   break;
  }

  sd_mbus_fmt.index++;
 }

 if (!yuyv_bus_fmt)
  return -ENXIO;






 mbus_fmt->mbus_code = sd_mbus_fmt.code;
 mbus_fmt->bps = 8;


 switch (sd_mbus_fmt.code) {
 case 129:
  mbus_fmt->fmt_order = CEU_CAMCR_DTARY_8_YUYV;
  mbus_fmt->fmt_order_swap = CEU_CAMCR_DTARY_8_YVYU;
  mbus_fmt->swapped = 0;
  mbus_fmt->bpp = 16;
  break;

 case 128:
  mbus_fmt->fmt_order = CEU_CAMCR_DTARY_8_YVYU;
  mbus_fmt->fmt_order_swap = CEU_CAMCR_DTARY_8_YUYV;
  mbus_fmt->swapped = 1;
  mbus_fmt->bpp = 16;
  break;

 case 131:
  mbus_fmt->fmt_order = CEU_CAMCR_DTARY_8_UYVY;
  mbus_fmt->fmt_order_swap = CEU_CAMCR_DTARY_8_VYUY;
  mbus_fmt->swapped = 0;
  mbus_fmt->bpp = 16;
  break;

 case 130:
  mbus_fmt->fmt_order = CEU_CAMCR_DTARY_8_VYUY;
  mbus_fmt->fmt_order_swap = CEU_CAMCR_DTARY_8_UYVY;
  mbus_fmt->swapped = 1;
  mbus_fmt->bpp = 16;
  break;
 }

 return 0;
}
