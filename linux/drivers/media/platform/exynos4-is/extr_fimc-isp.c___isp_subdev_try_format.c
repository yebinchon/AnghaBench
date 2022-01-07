
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int code; int colorspace; scalar_t__ height; scalar_t__ width; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct fimc_isp {struct v4l2_mbus_framefmt sink_fmt; int subdev; } ;


 scalar_t__ FIMC_ISP_CAC_MARGIN_HEIGHT ;
 scalar_t__ FIMC_ISP_CAC_MARGIN_WIDTH ;
 scalar_t__ FIMC_ISP_SD_PAD_SINK ;
 scalar_t__ FIMC_ISP_SD_PAD_SRC_FIFO ;
 int FIMC_ISP_SINK_HEIGHT_MAX ;
 int FIMC_ISP_SINK_HEIGHT_MIN ;
 int FIMC_ISP_SINK_WIDTH_MAX ;
 int FIMC_ISP_SINK_WIDTH_MIN ;
 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 int MEDIA_BUS_FMT_YUV10_1X30 ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_COLORSPACE_SRGB ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,scalar_t__) ;
 int v4l_bound_align_image (scalar_t__*,int ,int ,int ,scalar_t__*,int ,int ,int ,int ) ;

__attribute__((used)) static void __isp_subdev_try_format(struct fimc_isp *isp,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *fmt)
{
 struct v4l2_mbus_framefmt *mf = &fmt->format;
 struct v4l2_mbus_framefmt *format;

 mf->colorspace = V4L2_COLORSPACE_SRGB;

 if (fmt->pad == FIMC_ISP_SD_PAD_SINK) {
  v4l_bound_align_image(&mf->width, FIMC_ISP_SINK_WIDTH_MIN,
    FIMC_ISP_SINK_WIDTH_MAX, 0,
    &mf->height, FIMC_ISP_SINK_HEIGHT_MIN,
    FIMC_ISP_SINK_HEIGHT_MAX, 0, 0);
  mf->code = MEDIA_BUS_FMT_SGRBG10_1X10;
 } else {
  if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
   format = v4l2_subdev_get_try_format(&isp->subdev, cfg,
      FIMC_ISP_SD_PAD_SINK);
  else
   format = &isp->sink_fmt;


  mf->width = format->width - FIMC_ISP_CAC_MARGIN_WIDTH;
  mf->height = format->height - FIMC_ISP_CAC_MARGIN_HEIGHT;

  if (fmt->pad == FIMC_ISP_SD_PAD_SRC_FIFO) {
   mf->code = MEDIA_BUS_FMT_YUV10_1X30;
   mf->colorspace = V4L2_COLORSPACE_JPEG;
  } else {
   mf->code = format->code;
  }
 }
}
