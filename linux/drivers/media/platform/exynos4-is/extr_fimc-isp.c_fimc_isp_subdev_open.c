
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; int field; int code; int colorspace; } ;
struct TYPE_2__ {int mbus_code; } ;


 scalar_t__ DEFAULT_PREVIEW_STILL_HEIGHT ;
 scalar_t__ DEFAULT_PREVIEW_STILL_WIDTH ;
 scalar_t__ FIMC_ISP_CAC_MARGIN_HEIGHT ;
 scalar_t__ FIMC_ISP_CAC_MARGIN_WIDTH ;
 int FIMC_ISP_SD_PAD_SINK ;
 int FIMC_ISP_SD_PAD_SRC_DMA ;
 int FIMC_ISP_SD_PAD_SRC_FIFO ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 TYPE_1__* fimc_isp_formats ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int fimc_isp_subdev_open(struct v4l2_subdev *sd,
    struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *format;
 struct v4l2_mbus_framefmt fmt = {
  .colorspace = V4L2_COLORSPACE_SRGB,
  .code = fimc_isp_formats[0].mbus_code,
  .width = DEFAULT_PREVIEW_STILL_WIDTH + FIMC_ISP_CAC_MARGIN_WIDTH,
  .height = DEFAULT_PREVIEW_STILL_HEIGHT + FIMC_ISP_CAC_MARGIN_HEIGHT,
  .field = V4L2_FIELD_NONE,
 };

 format = v4l2_subdev_get_try_format(sd, fh->pad, FIMC_ISP_SD_PAD_SINK);
 *format = fmt;

 format = v4l2_subdev_get_try_format(sd, fh->pad, FIMC_ISP_SD_PAD_SRC_FIFO);
 fmt.width = DEFAULT_PREVIEW_STILL_WIDTH;
 fmt.height = DEFAULT_PREVIEW_STILL_HEIGHT;
 *format = fmt;

 format = v4l2_subdev_get_try_format(sd, fh->pad, FIMC_ISP_SD_PAD_SRC_DMA);
 *format = fmt;

 return 0;
}
