
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int xfer_func; int quantization; int ycbcr_enc; int field; int colorspace; int code; int height; int width; } ;
struct ov2640_win_size {int height; int width; } ;


 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int SVGA_HEIGHT ;
 int SVGA_WIDTH ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 struct ov2640_win_size* ov2640_select_win (int ,int ) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov2640_init_cfg(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg)
{
 return 0;
}
