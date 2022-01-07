
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_format {int bpp; } ;
struct v4l2_pix_format {int bytesperline; int width; int sizeimage; int height; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; int pixelformat; } ;


 struct via_format* via_find_format (int ) ;

__attribute__((used)) static void viacam_fmt_post(struct v4l2_pix_format *userfmt,
  struct v4l2_pix_format *sensorfmt)
{
 struct via_format *f = via_find_format(userfmt->pixelformat);

 sensorfmt->bytesperline = sensorfmt->width * f->bpp;
 sensorfmt->sizeimage = sensorfmt->height * sensorfmt->bytesperline;
 userfmt->pixelformat = sensorfmt->pixelformat;
 userfmt->field = sensorfmt->field;
 userfmt->bytesperline = 2 * userfmt->width;
 userfmt->sizeimage = userfmt->bytesperline * userfmt->height;
 userfmt->colorspace = sensorfmt->colorspace;
 userfmt->ycbcr_enc = sensorfmt->ycbcr_enc;
 userfmt->quantization = sensorfmt->quantization;
 userfmt->xfer_func = sensorfmt->xfer_func;
}
