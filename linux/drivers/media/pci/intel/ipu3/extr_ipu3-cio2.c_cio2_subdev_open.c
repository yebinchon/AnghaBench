
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int width; int height; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; int code; } ;
struct TYPE_2__ {int mbus_code; } ;


 int CIO2_PAD_SINK ;
 int CIO2_PAD_SOURCE ;
 int V4L2_COLORSPACE_RAW ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 TYPE_1__* formats ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int cio2_subdev_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *format;
 const struct v4l2_mbus_framefmt fmt_default = {
  .width = 1936,
  .height = 1096,
  .code = formats[0].mbus_code,
  .field = V4L2_FIELD_NONE,
  .colorspace = V4L2_COLORSPACE_RAW,
  .ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT,
  .quantization = V4L2_QUANTIZATION_DEFAULT,
  .xfer_func = V4L2_XFER_FUNC_DEFAULT,
 };


 format = v4l2_subdev_get_try_format(sd, fh->pad, CIO2_PAD_SINK);
 *format = fmt_default;


 format = v4l2_subdev_get_try_format(sd, fh->pad, CIO2_PAD_SOURCE);
 *format = fmt_default;

 return 0;
}
