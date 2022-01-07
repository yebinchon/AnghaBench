
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format_mplane {int height; int width; int pixelformat; TYPE_1__* plane_fmt; } ;
struct ceu_mbus_fmt {int bpp; int fmt_order_swap; int fmt_order; int swapped; } ;
struct ceu_subdev {unsigned int mbus_flags; struct ceu_mbus_fmt mbus_fmt; } ;
struct ceu_device {struct ceu_subdev* sd; struct v4l2_pix_format_mplane v4l2_pix; } ;
struct TYPE_2__ {int bytesperline; } ;


 int CEU_CAIFR ;
 int CEU_CAMCR ;
 int CEU_CAMCR_JPEG ;
 int CEU_CAMOR ;
 int CEU_CAPCR ;
 int CEU_CAPCR_BUS_WIDTH256 ;
 int CEU_CAPWR ;
 int CEU_CDOCR ;
 int CEU_CDOCR_NO_DOWSAMPLE ;
 int CEU_CDOCR_SWAP_ENDIANNESS ;
 int CEU_CDWDR ;
 int CEU_CFSZR ;
 int CEU_CFWCR ;
 int CEU_CRCMPR ;
 int CEU_CRCNTR ;
 int EINVAL ;
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_LOW ;
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int ceu_write (struct ceu_device*,int ,int) ;

__attribute__((used)) static int ceu_hw_config(struct ceu_device *ceudev)
{
 u32 camcr, cdocr, cfzsr, cdwdr, capwr;
 struct v4l2_pix_format_mplane *pix = &ceudev->v4l2_pix;
 struct ceu_subdev *ceu_sd = ceudev->sd;
 struct ceu_mbus_fmt *mbus_fmt = &ceu_sd->mbus_fmt;
 unsigned int mbus_flags = ceu_sd->mbus_flags;


 ceu_write(ceudev, CEU_CAIFR, 0);
 ceu_write(ceudev, CEU_CFWCR, 0);
 ceu_write(ceudev, CEU_CRCNTR, 0);
 ceu_write(ceudev, CEU_CRCMPR, 0);


 capwr = (pix->height << 16) | pix->width * mbus_fmt->bpp / 8;
 cdocr = CEU_CDOCR_SWAP_ENDIANNESS;
 switch (pix->pixelformat) {

 case 129:
 case 128:
 case 131:
 case 130:
  camcr = CEU_CAMCR_JPEG;
  cdocr |= CEU_CDOCR_NO_DOWSAMPLE;
  cfzsr = (pix->height << 16) | pix->width;
  cdwdr = pix->plane_fmt[0].bytesperline;
  break;


 case 134:
  cdocr |= CEU_CDOCR_NO_DOWSAMPLE;

 case 135:
  if (mbus_fmt->swapped)
   camcr = mbus_fmt->fmt_order_swap;
  else
   camcr = mbus_fmt->fmt_order;

  cfzsr = (pix->height << 16) | pix->width;
  cdwdr = pix->width;
  break;


 case 132:
  cdocr |= CEU_CDOCR_NO_DOWSAMPLE;

 case 133:
  if (mbus_fmt->swapped)
   camcr = mbus_fmt->fmt_order;
  else
   camcr = mbus_fmt->fmt_order_swap;

  cfzsr = (pix->height << 16) | pix->width;
  cdwdr = pix->width;
  break;

 default:
  return -EINVAL;
 }

 camcr |= mbus_flags & V4L2_MBUS_VSYNC_ACTIVE_LOW ? 1 << 1 : 0;
 camcr |= mbus_flags & V4L2_MBUS_HSYNC_ACTIVE_LOW ? 1 << 0 : 0;


 ceu_write(ceudev, CEU_CAMCR, camcr);
 ceu_write(ceudev, CEU_CDOCR, cdocr);
 ceu_write(ceudev, CEU_CAPCR, CEU_CAPCR_BUS_WIDTH256);






 ceu_write(ceudev, CEU_CAMOR, 0);


 ceu_write(ceudev, CEU_CAPWR, capwr);
 ceu_write(ceudev, CEU_CFSZR, cfzsr);
 ceu_write(ceudev, CEU_CDWDR, cdwdr);

 return 0;
}
