
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum v4l2_colorspace { ____Placeholder_v4l2_colorspace } v4l2_colorspace ;


 int BUG () ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_COLORSPACE_SRGB ;
__attribute__((used)) static enum v4l2_colorspace sh_veu_4cc2cspace(u32 fourcc)
{
 switch (fourcc) {
 default:
  BUG();
 case 134:
 case 133:
 case 132:
  return V4L2_COLORSPACE_SMPTE170M;
 case 130:
 case 129:
 case 128:
 case 135:
 case 131:
  return V4L2_COLORSPACE_SRGB;
 }
}
