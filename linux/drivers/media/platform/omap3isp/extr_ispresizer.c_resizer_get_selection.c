
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* height; void* width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; TYPE_1__ r; int which; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct resizer_ratio {int dummy; } ;
struct isp_res_device {int dummy; } ;


 int EINVAL ;
 void* INT_MAX ;
 scalar_t__ RESZ_PAD_SINK ;
 scalar_t__ RESZ_PAD_SOURCE ;


 TYPE_1__* __resizer_get_crop (struct isp_res_device*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* __resizer_get_format (struct isp_res_device*,struct v4l2_subdev_pad_config*,scalar_t__,int ) ;
 int resizer_calc_ratios (struct isp_res_device*,TYPE_1__*,struct v4l2_mbus_framefmt*,struct resizer_ratio*) ;
 int resizer_try_crop (struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*,TYPE_1__*) ;
 struct isp_res_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_get_selection(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_selection *sel)
{
 struct isp_res_device *res = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format_source;
 struct v4l2_mbus_framefmt *format_sink;
 struct resizer_ratio ratio;

 if (sel->pad != RESZ_PAD_SINK)
  return -EINVAL;

 format_sink = __resizer_get_format(res, cfg, RESZ_PAD_SINK,
        sel->which);
 format_source = __resizer_get_format(res, cfg, RESZ_PAD_SOURCE,
          sel->which);

 switch (sel->target) {
 case 128:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = INT_MAX;
  sel->r.height = INT_MAX;

  resizer_try_crop(format_sink, format_source, &sel->r);
  resizer_calc_ratios(res, &sel->r, format_source, &ratio);
  break;

 case 129:
  sel->r = *__resizer_get_crop(res, cfg, sel->which);
  resizer_calc_ratios(res, &sel->r, format_source, &ratio);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
