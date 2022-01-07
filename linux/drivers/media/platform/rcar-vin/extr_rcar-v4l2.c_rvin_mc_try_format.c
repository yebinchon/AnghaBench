
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {int ycbcr_enc; int colorspace; int quantization; int xfer_func; } ;
struct rvin_dev {int dummy; } ;


 int RVIN_DEFAULT_COLORSPACE ;
 int V4L2_MAP_QUANTIZATION_DEFAULT (int,int ,int ) ;
 int V4L2_MAP_XFER_FUNC_DEFAULT (int ) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;
 int rvin_format_align (struct rvin_dev*,struct v4l2_pix_format*) ;

__attribute__((used)) static void rvin_mc_try_format(struct rvin_dev *vin,
          struct v4l2_pix_format *pix)
{






 pix->colorspace = RVIN_DEFAULT_COLORSPACE;
 pix->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(pix->colorspace);
 pix->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(pix->colorspace);
 pix->quantization = V4L2_MAP_QUANTIZATION_DEFAULT(1, pix->colorspace,
         pix->ycbcr_enc);

 rvin_format_align(vin, pix);
}
