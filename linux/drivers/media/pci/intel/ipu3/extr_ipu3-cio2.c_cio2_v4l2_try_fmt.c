
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format_mplane {scalar_t__ width; int height; int num_planes; int xfer_func; int quantization; int ycbcr_enc; TYPE_2__* plane_fmt; int reserved; int field; int colorspace; int pixelformat; } ;
struct TYPE_3__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct ipu3_cio2_fmt {int fourcc; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int bytesperline; int sizeimage; int reserved; } ;


 int CIO2_IMAGE_MAX_LENGTH ;
 scalar_t__ CIO2_IMAGE_MAX_WIDTH ;
 int V4L2_COLORSPACE_RAW ;
 int V4L2_FIELD_NONE ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int cio2_bytesperline (scalar_t__) ;
 struct ipu3_cio2_fmt* cio2_find_format (int *,int *) ;
 struct ipu3_cio2_fmt* formats ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int cio2_v4l2_try_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 const struct ipu3_cio2_fmt *fmt;
 struct v4l2_pix_format_mplane *mpix = &f->fmt.pix_mp;

 fmt = cio2_find_format(&mpix->pixelformat, ((void*)0));
 if (!fmt)
  fmt = &formats[0];


 if (mpix->width > CIO2_IMAGE_MAX_WIDTH)
  mpix->width = CIO2_IMAGE_MAX_WIDTH;
 if (mpix->height > CIO2_IMAGE_MAX_LENGTH)
  mpix->height = CIO2_IMAGE_MAX_LENGTH;

 mpix->num_planes = 1;
 mpix->pixelformat = fmt->fourcc;
 mpix->colorspace = V4L2_COLORSPACE_RAW;
 mpix->field = V4L2_FIELD_NONE;
 memset(mpix->reserved, 0, sizeof(mpix->reserved));
 mpix->plane_fmt[0].bytesperline = cio2_bytesperline(mpix->width);
 mpix->plane_fmt[0].sizeimage = mpix->plane_fmt[0].bytesperline *
       mpix->height;
 memset(mpix->plane_fmt[0].reserved, 0,
        sizeof(mpix->plane_fmt[0].reserved));


 mpix->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 mpix->quantization = V4L2_QUANTIZATION_DEFAULT;
 mpix->xfer_func = V4L2_XFER_FUNC_DEFAULT;

 return 0;
}
