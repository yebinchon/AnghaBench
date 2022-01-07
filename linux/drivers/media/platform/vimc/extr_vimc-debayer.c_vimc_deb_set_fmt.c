
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct v4l2_mbus_framefmt {int ycbcr_enc; int xfer_func; int quantization; int colorspace; int code; int height; int width; } ;
struct vimc_deb_device {TYPE_1__ sd; int dev; int src_code; struct v4l2_mbus_framefmt sink_fmt; scalar_t__ src_frame; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EBUSY ;
 scalar_t__ IS_SRC (int ) ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct vimc_deb_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;
 int vimc_deb_adjust_sink_fmt (struct v4l2_mbus_framefmt*) ;

__attribute__((used)) static int vimc_deb_set_fmt(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt)
{
 struct vimc_deb_device *vdeb = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *sink_fmt;

 if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {

  if (vdeb->src_frame)
   return -EBUSY;

  sink_fmt = &vdeb->sink_fmt;
 } else {
  sink_fmt = v4l2_subdev_get_try_format(sd, cfg, 0);
 }





 if (IS_SRC(fmt->pad)) {
  fmt->format = *sink_fmt;

  fmt->format.code = vdeb->src_code;
 } else {

  vimc_deb_adjust_sink_fmt(&fmt->format);

  dev_dbg(vdeb->dev, "%s: sink format update: "
   "old:%dx%d (0x%x, %d, %d, %d, %d) "
   "new:%dx%d (0x%x, %d, %d, %d, %d)\n", vdeb->sd.name,

   sink_fmt->width, sink_fmt->height, sink_fmt->code,
   sink_fmt->colorspace, sink_fmt->quantization,
   sink_fmt->xfer_func, sink_fmt->ycbcr_enc,

   fmt->format.width, fmt->format.height, fmt->format.code,
   fmt->format.colorspace, fmt->format.quantization,
   fmt->format.xfer_func, fmt->format.ycbcr_enc);

  *sink_fmt = fmt->format;
 }

 return 0;
}
