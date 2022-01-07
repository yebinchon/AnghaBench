
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uvc_frame {int wWidth; } ;
struct uvc_format {int fcc; int bpp; } ;







__attribute__((used)) static u32 uvc_v4l2_get_bytesperline(const struct uvc_format *format,
 const struct uvc_frame *frame)
{
 switch (format->fcc) {
 case 130:
 case 128:
 case 129:
 case 131:
  return frame->wWidth;

 default:
  return format->bpp * frame->wWidth / 8;
 }
}
