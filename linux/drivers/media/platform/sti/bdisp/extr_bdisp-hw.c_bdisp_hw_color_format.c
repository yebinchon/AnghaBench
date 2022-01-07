
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BDISP_ARGB8888 ;
 int BDISP_NV12 ;
 int BDISP_RGB565 ;
 int BDISP_RGB888 ;
 int BDISP_XRGB8888 ;
 int BDISP_YUV_3B ;
 int BLT_TTY_ALPHA_R ;
 int BLT_TTY_BIG_END ;
 int BLT_TTY_COL_SHIFT ;







__attribute__((used)) static u32 bdisp_hw_color_format(u32 pixelformat)
{
 u32 ret;

 switch (pixelformat) {
 case 128:
  ret = (BDISP_YUV_3B << BLT_TTY_COL_SHIFT);
  break;
 case 132:
  ret = (BDISP_NV12 << BLT_TTY_COL_SHIFT) | BLT_TTY_BIG_END;
  break;
 case 130:
  ret = (BDISP_RGB565 << BLT_TTY_COL_SHIFT);
  break;
 case 129:
  ret = (BDISP_XRGB8888 << BLT_TTY_COL_SHIFT);
  break;
 case 131:
  ret = (BDISP_RGB888 << BLT_TTY_COL_SHIFT) | BLT_TTY_BIG_END;
  break;
 case 133:

 default:
  ret = (BDISP_ARGB8888 << BLT_TTY_COL_SHIFT) | BLT_TTY_ALPHA_R;
  break;
 }

 return ret;
}
