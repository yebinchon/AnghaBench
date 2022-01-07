
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BV_PXP_OUT_CTRL_FORMAT__ARGB8888 ;
 int BV_PXP_OUT_CTRL_FORMAT__RGB444 ;
 int BV_PXP_OUT_CTRL_FORMAT__RGB555 ;
 int BV_PXP_OUT_CTRL_FORMAT__RGB565 ;
 int BV_PXP_OUT_CTRL_FORMAT__RGB888 ;
 int BV_PXP_OUT_CTRL_FORMAT__RGB888P ;
 int BV_PXP_OUT_CTRL_FORMAT__UYVY1P422 ;
 int BV_PXP_OUT_CTRL_FORMAT__VYUY1P422 ;
 int BV_PXP_OUT_CTRL_FORMAT__Y4 ;
 int BV_PXP_OUT_CTRL_FORMAT__Y8 ;
 int BV_PXP_OUT_CTRL_FORMAT__YUV1P444 ;
 int BV_PXP_OUT_CTRL_FORMAT__YUV2P420 ;
 int BV_PXP_OUT_CTRL_FORMAT__YUV2P422 ;
 int BV_PXP_OUT_CTRL_FORMAT__YVU2P420 ;
 int BV_PXP_OUT_CTRL_FORMAT__YVU2P422 ;
__attribute__((used)) static u32 pxp_v4l2_pix_fmt_to_out_format(u32 v4l2_pix_fmt)
{
 switch (v4l2_pix_fmt) {
 case 129: return BV_PXP_OUT_CTRL_FORMAT__RGB888;
 case 143: return BV_PXP_OUT_CTRL_FORMAT__ARGB8888;
 case 142: return BV_PXP_OUT_CTRL_FORMAT__RGB888P;

 case 135: return BV_PXP_OUT_CTRL_FORMAT__RGB555;
 case 136: return BV_PXP_OUT_CTRL_FORMAT__RGB444;
 case 134: return BV_PXP_OUT_CTRL_FORMAT__RGB565;
 case 132:
 case 131: return BV_PXP_OUT_CTRL_FORMAT__YUV1P444;
 case 133: return BV_PXP_OUT_CTRL_FORMAT__UYVY1P422;
 case 130: return BV_PXP_OUT_CTRL_FORMAT__VYUY1P422;
 case 141: return BV_PXP_OUT_CTRL_FORMAT__Y8;
 default:
 case 128: return BV_PXP_OUT_CTRL_FORMAT__Y4;
 case 139: return BV_PXP_OUT_CTRL_FORMAT__YUV2P422;
 case 140: return BV_PXP_OUT_CTRL_FORMAT__YUV2P420;
 case 137: return BV_PXP_OUT_CTRL_FORMAT__YVU2P422;
 case 138: return BV_PXP_OUT_CTRL_FORMAT__YVU2P420;
 }
}
