
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_2__ {int active; int request; } ;
struct isp_res_device {int ratio; TYPE_1__ crop; } ;


 int EINVAL ;
 int RESZ_PAD_SINK ;
 int RESZ_PAD_SOURCE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_rect* __resizer_get_crop (struct isp_res_device*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* __resizer_get_format (struct isp_res_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int resizer_calc_ratios (struct isp_res_device*,int *,struct v4l2_mbus_framefmt*,int *) ;
 int resizer_try_format (struct isp_res_device*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct isp_res_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct isp_res_device *res = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;
 struct v4l2_rect *crop;

 format = __resizer_get_format(res, cfg, fmt->pad, fmt->which);
 if (format == ((void*)0))
  return -EINVAL;

 resizer_try_format(res, cfg, fmt->pad, &fmt->format, fmt->which);
 *format = fmt->format;

 if (fmt->pad == RESZ_PAD_SINK) {

  crop = __resizer_get_crop(res, cfg, fmt->which);
  crop->left = 0;
  crop->top = 0;
  crop->width = fmt->format.width;
  crop->height = fmt->format.height;


  format = __resizer_get_format(res, cfg, RESZ_PAD_SOURCE,
           fmt->which);
  *format = fmt->format;
  resizer_try_format(res, cfg, RESZ_PAD_SOURCE, format,
       fmt->which);
 }

 if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {




  res->crop.active = res->crop.request;
  resizer_calc_ratios(res, &res->crop.active, format,
           &res->ratio);
 }

 return 0;
}
