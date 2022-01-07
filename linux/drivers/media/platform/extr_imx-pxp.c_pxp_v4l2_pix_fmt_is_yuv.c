
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static bool pxp_v4l2_pix_fmt_is_yuv(u32 v4l2_pix_fmt)
{
 switch (v4l2_pix_fmt) {
 case 135:
 case 134:
 case 136:
 case 129:
 case 133:
 case 128:
 case 139:
 case 140:
 case 137:
 case 138:
 case 131:
 case 130:
 case 141:
 case 132:
  return 1;
 default:
  return 0;
 }
}
