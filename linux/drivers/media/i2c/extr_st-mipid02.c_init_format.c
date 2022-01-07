
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int width; int height; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; int code; } ;


 int MEDIA_BUS_FMT_SBGGR8_1X8 ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_MAP_XFER_FUNC_DEFAULT (int ) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;
 int V4L2_QUANTIZATION_FULL_RANGE ;

__attribute__((used)) static void init_format(struct v4l2_mbus_framefmt *fmt)
{
 fmt->code = MEDIA_BUS_FMT_SBGGR8_1X8;
 fmt->field = V4L2_FIELD_NONE;
 fmt->colorspace = V4L2_COLORSPACE_SRGB;
 fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(V4L2_COLORSPACE_SRGB);
 fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
 fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(V4L2_COLORSPACE_SRGB);
 fmt->width = 640;
 fmt->height = 480;
}
