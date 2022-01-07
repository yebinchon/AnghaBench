
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int colorspace; int ycbcr_enc; int quantization; int height; int width; int xfer_func; int field; int num_planes; int pixelformat; } ;
struct TYPE_2__ {int colorspace; int ycbcr_enc; int quantization; scalar_t__ field; int height; int width; int xfer_func; } ;
struct fdp1_q_data {TYPE_1__ format; } ;
struct fdp1_fmt {int num_planes; int fourcc; } ;
struct fdp1_ctx {struct fdp1_q_data out_q; } ;
typedef enum v4l2_ycbcr_encoding { ____Placeholder_v4l2_ycbcr_encoding } v4l2_ycbcr_encoding ;
typedef enum v4l2_quantization { ____Placeholder_v4l2_quantization } v4l2_quantization ;
typedef enum v4l2_colorspace { ____Placeholder_v4l2_colorspace } v4l2_colorspace ;


 scalar_t__ V4L2_FIELD_ALTERNATE ;
 int V4L2_FIELD_NONE ;
 int V4L2_MAP_QUANTIZATION_DEFAULT (int,int,int) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int) ;
 int V4L2_PIX_FMT_YUYV ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_QUANTIZATION_LIM_RANGE ;
 int V4L2_YCBCR_ENC_601 ;
 int V4L2_YCBCR_ENC_709 ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int fdp1_compute_stride (struct v4l2_pix_format_mplane*,struct fdp1_fmt const*) ;
 struct fdp1_fmt* fdp1_find_format (int ) ;
 scalar_t__ fdp1_fmt_is_rgb (struct fdp1_fmt const*) ;

__attribute__((used)) static void fdp1_try_fmt_capture(struct fdp1_ctx *ctx,
     const struct fdp1_fmt **fmtinfo,
     struct v4l2_pix_format_mplane *pix)
{
 struct fdp1_q_data *src_data = &ctx->out_q;
 enum v4l2_colorspace colorspace;
 enum v4l2_ycbcr_encoding ycbcr_enc;
 enum v4l2_quantization quantization;
 const struct fdp1_fmt *fmt;
 bool allow_rgb;
 colorspace = src_data->format.colorspace;

 ycbcr_enc = src_data->format.ycbcr_enc;
 if (ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT)
  ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(colorspace);

 quantization = src_data->format.quantization;
 if (quantization == V4L2_QUANTIZATION_DEFAULT)
  quantization = V4L2_MAP_QUANTIZATION_DEFAULT(0, colorspace,
            ycbcr_enc);

 allow_rgb = ycbcr_enc == V4L2_YCBCR_ENC_601 ||
      (ycbcr_enc == V4L2_YCBCR_ENC_709 &&
       quantization == V4L2_QUANTIZATION_LIM_RANGE);

 fmt = fdp1_find_format(pix->pixelformat);
 if (!fmt || (!allow_rgb && fdp1_fmt_is_rgb(fmt)))
  fmt = fdp1_find_format(V4L2_PIX_FMT_YUYV);

 if (fmtinfo)
  *fmtinfo = fmt;

 pix->pixelformat = fmt->fourcc;
 pix->num_planes = fmt->num_planes;
 pix->field = V4L2_FIELD_NONE;







 pix->colorspace = src_data->format.colorspace;
 pix->xfer_func = src_data->format.xfer_func;

 if (fdp1_fmt_is_rgb(fmt)) {
  pix->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
  pix->quantization = V4L2_QUANTIZATION_DEFAULT;
 } else {
  pix->ycbcr_enc = src_data->format.ycbcr_enc;
  pix->quantization = src_data->format.quantization;
 }






 pix->width = src_data->format.width;
 if (src_data->format.field == V4L2_FIELD_ALTERNATE)
  pix->height = 2 * src_data->format.height;
 else
  pix->height = src_data->format.height;

 fdp1_compute_stride(pix, fmt);
}
