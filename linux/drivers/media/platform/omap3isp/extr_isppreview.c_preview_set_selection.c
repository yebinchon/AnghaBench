
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_selection {scalar_t__ target; scalar_t__ pad; int flags; int which; int r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct isp_prev_device {scalar_t__ state; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ ISP_PIPELINE_STREAM_STOPPED ;
 scalar_t__ PREV_PAD_SINK ;
 scalar_t__ PREV_PAD_SOURCE ;
 int V4L2_SEL_FLAG_KEEP_CONFIG ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int * __preview_get_crop (struct isp_prev_device*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* __preview_get_format (struct isp_prev_device*,struct v4l2_subdev_pad_config*,scalar_t__,int ) ;
 int preview_try_crop (struct isp_prev_device*,struct v4l2_mbus_framefmt*,int *) ;
 int preview_try_format (struct isp_prev_device*,struct v4l2_subdev_pad_config*,scalar_t__,struct v4l2_mbus_framefmt*,int ) ;
 struct isp_prev_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int preview_set_selection(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_selection *sel)
{
 struct isp_prev_device *prev = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 if (sel->target != V4L2_SEL_TGT_CROP ||
     sel->pad != PREV_PAD_SINK)
  return -EINVAL;


 if (prev->state != ISP_PIPELINE_STREAM_STOPPED)
  return -EBUSY;





 if (sel->flags & V4L2_SEL_FLAG_KEEP_CONFIG) {
  sel->r = *__preview_get_crop(prev, cfg, sel->which);
  return 0;
 }

 format = __preview_get_format(prev, cfg, PREV_PAD_SINK, sel->which);
 preview_try_crop(prev, format, &sel->r);
 *__preview_get_crop(prev, cfg, sel->which) = sel->r;


 format = __preview_get_format(prev, cfg, PREV_PAD_SOURCE, sel->which);
 preview_try_format(prev, cfg, PREV_PAD_SOURCE, format, sel->which);

 return 0;
}
