
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ pixelformat; int width; int height; int colorspace; int quantization; int ycbcr_enc; int xfer_func; } ;
typedef enum v4l2_colorspace { ____Placeholder_v4l2_colorspace } v4l2_colorspace ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_COLORSPACE_REC709 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;

__attribute__((used)) static void coda_set_default_colorspace(struct v4l2_pix_format *fmt)
{
 enum v4l2_colorspace colorspace;

 if (fmt->pixelformat == V4L2_PIX_FMT_JPEG)
  colorspace = V4L2_COLORSPACE_JPEG;
 else if (fmt->width <= 720 && fmt->height <= 576)
  colorspace = V4L2_COLORSPACE_SMPTE170M;
 else
  colorspace = V4L2_COLORSPACE_REC709;

 fmt->colorspace = colorspace;
 fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
 fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
}
