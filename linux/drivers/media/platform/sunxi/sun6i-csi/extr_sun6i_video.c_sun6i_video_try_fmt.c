
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; scalar_t__ field; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct sun6i_video {int dummy; } ;


 int MAX_WIDTH ;
 int MIN_HEIGHT ;
 int MIN_WIDTH ;
 int V4L2_COLORSPACE_RAW ;
 scalar_t__ V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int is_pixformat_valid (int ) ;
 int sun6i_csi_get_bpp (int ) ;
 int * supported_pixformats ;
 int v4l_bound_align_image (int*,int ,int ,int,int*,int ,int ,int,int) ;

__attribute__((used)) static int sun6i_video_try_fmt(struct sun6i_video *video,
          struct v4l2_format *f)
{
 struct v4l2_pix_format *pixfmt = &f->fmt.pix;
 int bpp;

 if (!is_pixformat_valid(pixfmt->pixelformat))
  pixfmt->pixelformat = supported_pixformats[0];

 v4l_bound_align_image(&pixfmt->width, MIN_WIDTH, MAX_WIDTH, 1,
         &pixfmt->height, MIN_HEIGHT, MAX_WIDTH, 1, 1);

 bpp = sun6i_csi_get_bpp(pixfmt->pixelformat);
 pixfmt->bytesperline = (pixfmt->width * bpp) >> 3;
 pixfmt->sizeimage = pixfmt->bytesperline * pixfmt->height;

 if (pixfmt->field == V4L2_FIELD_ANY)
  pixfmt->field = V4L2_FIELD_NONE;

 pixfmt->colorspace = V4L2_COLORSPACE_RAW;
 pixfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 pixfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 pixfmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 return 0;
}
