
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; size_t index; int code; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct isp_ccdc_device {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;



 int EINVAL ;
 int MEDIA_BUS_FMT_UYVY8_1X16 ;
 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int MEDIA_BUS_FMT_YUYV8_1X16 ;
 int MEDIA_BUS_FMT_YUYV8_2X8 ;
 struct v4l2_mbus_framefmt* __ccdc_get_format (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,int,int ) ;
 int * ccdc_fmts ;
 struct isp_ccdc_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ccdc_enum_mbus_code(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_mbus_code_enum *code)
{
 struct isp_ccdc_device *ccdc = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 switch (code->pad) {
 case 130:
  if (code->index >= ARRAY_SIZE(ccdc_fmts))
   return -EINVAL;

  code->code = ccdc_fmts[code->index];
  break;

 case 129:
  format = __ccdc_get_format(ccdc, cfg, code->pad,
        code->which);

  if (format->code == MEDIA_BUS_FMT_YUYV8_2X8 ||
      format->code == MEDIA_BUS_FMT_UYVY8_2X8) {

   if (code->index == 0)
    code->code = MEDIA_BUS_FMT_YUYV8_1X16;
   else if (code->index == 1)
    code->code = MEDIA_BUS_FMT_UYVY8_1X16;
   else
    return -EINVAL;
  } else {



   if (code->index == 0)
    code->code = format->code;
   else
    return -EINVAL;
  }
  break;

 case 128:




  if (code->index != 0)
   return -EINVAL;

  format = __ccdc_get_format(ccdc, cfg, code->pad,
        code->which);




  if (format->code == 0)
   return -EINVAL;

  code->code = format->code;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
