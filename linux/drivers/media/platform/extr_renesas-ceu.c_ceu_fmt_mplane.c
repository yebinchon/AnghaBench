
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format_mplane {int pixelformat; } ;
__attribute__((used)) static bool ceu_fmt_mplane(struct v4l2_pix_format_mplane *pix)
{
 switch (pix->pixelformat) {
 case 129:
 case 131:
 case 128:
 case 130:
  return 0;
 case 134:
 case 132:
 case 135:
 case 133:
  return 1;
 default:
  return 0;
 }
}
