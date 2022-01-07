
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct v4l2_mbus_framefmt {int ycbcr_enc; int xfer_func; int quantization; int colorspace; int code; int height; int width; } ;
struct vimc_sen_device {TYPE_1__ sd; int dev; struct v4l2_mbus_framefmt mbus_format; scalar_t__ frame; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EBUSY ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct vimc_sen_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;
 int vimc_sen_adjust_fmt (struct v4l2_mbus_framefmt*) ;

__attribute__((used)) static int vimc_sen_set_fmt(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt)
{
 struct vimc_sen_device *vsen = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *mf;

 if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {

  if (vsen->frame)
   return -EBUSY;

  mf = &vsen->mbus_format;
 } else {
  mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
 }


 vimc_sen_adjust_fmt(&fmt->format);

 dev_dbg(vsen->dev, "%s: format update: "
  "old:%dx%d (0x%x, %d, %d, %d, %d) "
  "new:%dx%d (0x%x, %d, %d, %d, %d)\n", vsen->sd.name,

  mf->width, mf->height, mf->code,
  mf->colorspace, mf->quantization,
  mf->xfer_func, mf->ycbcr_enc,

  fmt->format.width, fmt->format.height, fmt->format.code,
  fmt->format.colorspace, fmt->format.quantization,
  fmt->format.xfer_func, fmt->format.ycbcr_enc);

 *mf = fmt->format;

 return 0;
}
