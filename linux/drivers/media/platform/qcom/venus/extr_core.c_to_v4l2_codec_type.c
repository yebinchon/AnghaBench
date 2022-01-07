
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int V4L2_PIX_FMT_H263 ;
 int V4L2_PIX_FMT_H264 ;
 int V4L2_PIX_FMT_MPEG1 ;
 int V4L2_PIX_FMT_MPEG2 ;
 int V4L2_PIX_FMT_MPEG4 ;
 int V4L2_PIX_FMT_VC1_ANNEX_G ;
 int V4L2_PIX_FMT_VP8 ;
 int V4L2_PIX_FMT_VP9 ;
 int V4L2_PIX_FMT_XVID ;

__attribute__((used)) static u32 to_v4l2_codec_type(u32 codec)
{
 switch (codec) {
 case 134:
  return V4L2_PIX_FMT_H264;
 case 135:
  return V4L2_PIX_FMT_H263;
 case 133:
  return V4L2_PIX_FMT_MPEG1;
 case 132:
  return V4L2_PIX_FMT_MPEG2;
 case 131:
  return V4L2_PIX_FMT_MPEG4;
 case 130:
  return V4L2_PIX_FMT_VC1_ANNEX_G;
 case 129:
  return V4L2_PIX_FMT_VP8;
 case 128:
  return V4L2_PIX_FMT_VP9;
 case 137:
 case 136:
  return V4L2_PIX_FMT_XVID;
 default:
  return 0;
 }
}
