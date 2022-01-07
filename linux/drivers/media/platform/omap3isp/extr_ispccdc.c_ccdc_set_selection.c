
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_selection {scalar_t__ target; scalar_t__ pad; int flags; int which; int r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct isp_ccdc_device {scalar_t__ state; } ;


 scalar_t__ CCDC_PAD_SINK ;
 scalar_t__ CCDC_PAD_SOURCE_OF ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ ISP_PIPELINE_STREAM_STOPPED ;
 int V4L2_SEL_FLAG_KEEP_CONFIG ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int * __ccdc_get_crop (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* __ccdc_get_format (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,scalar_t__,int ) ;
 int ccdc_try_crop (struct isp_ccdc_device*,struct v4l2_mbus_framefmt*,int *) ;
 int ccdc_try_format (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,scalar_t__,struct v4l2_mbus_framefmt*,int ) ;
 struct isp_ccdc_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ccdc_set_selection(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_selection *sel)
{
 struct isp_ccdc_device *ccdc = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 if (sel->target != V4L2_SEL_TGT_CROP ||
     sel->pad != CCDC_PAD_SOURCE_OF)
  return -EINVAL;


 if (ccdc->state != ISP_PIPELINE_STREAM_STOPPED)
  return -EBUSY;





 if (sel->flags & V4L2_SEL_FLAG_KEEP_CONFIG) {
  sel->r = *__ccdc_get_crop(ccdc, cfg, sel->which);
  return 0;
 }

 format = __ccdc_get_format(ccdc, cfg, CCDC_PAD_SINK, sel->which);
 ccdc_try_crop(ccdc, format, &sel->r);
 *__ccdc_get_crop(ccdc, cfg, sel->which) = sel->r;


 format = __ccdc_get_format(ccdc, cfg, CCDC_PAD_SOURCE_OF, sel->which);
 ccdc_try_format(ccdc, cfg, CCDC_PAD_SOURCE_OF, format, sel->which);

 return 0;
}
