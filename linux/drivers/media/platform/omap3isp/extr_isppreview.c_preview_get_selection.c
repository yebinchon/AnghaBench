
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* height; void* width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; int which; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct isp_prev_device {int dummy; } ;


 int EINVAL ;
 void* INT_MAX ;
 scalar_t__ PREV_PAD_SINK ;


 TYPE_1__* __preview_get_crop (struct isp_prev_device*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* __preview_get_format (struct isp_prev_device*,struct v4l2_subdev_pad_config*,scalar_t__,int ) ;
 int preview_try_crop (struct isp_prev_device*,struct v4l2_mbus_framefmt*,TYPE_1__*) ;
 struct isp_prev_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int preview_get_selection(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_selection *sel)
{
 struct isp_prev_device *prev = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 if (sel->pad != PREV_PAD_SINK)
  return -EINVAL;

 switch (sel->target) {
 case 128:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = INT_MAX;
  sel->r.height = INT_MAX;

  format = __preview_get_format(prev, cfg, PREV_PAD_SINK,
           sel->which);
  preview_try_crop(prev, format, &sel->r);
  break;

 case 129:
  sel->r = *__preview_get_crop(prev, cfg, sel->which);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
