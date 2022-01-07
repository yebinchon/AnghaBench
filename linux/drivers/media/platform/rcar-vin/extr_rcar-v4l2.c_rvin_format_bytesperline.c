
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_pix_format {scalar_t__ pixelformat; int width; } ;
struct rvin_video_format {int bpp; } ;
struct rvin_dev {int dummy; } ;


 int ALIGN (int ,int) ;
 int EINVAL ;
 scalar_t__ V4L2_PIX_FMT_NV16 ;
 scalar_t__ WARN_ON (int) ;
 struct rvin_video_format* rvin_format_from_pixel (struct rvin_dev*,scalar_t__) ;

__attribute__((used)) static u32 rvin_format_bytesperline(struct rvin_dev *vin,
        struct v4l2_pix_format *pix)
{
 const struct rvin_video_format *fmt;
 u32 align;

 fmt = rvin_format_from_pixel(vin, pix->pixelformat);

 if (WARN_ON(!fmt))
  return -EINVAL;

 align = pix->pixelformat == V4L2_PIX_FMT_NV16 ? 0x20 : 0x10;

 return ALIGN(pix->width, align) * fmt->bpp;
}
