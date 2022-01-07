
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HFI_VIDEO_CODEC_DIVX ;
 int HFI_VIDEO_CODEC_H263 ;
 int HFI_VIDEO_CODEC_H264 ;
 int HFI_VIDEO_CODEC_HEVC ;
 int HFI_VIDEO_CODEC_MPEG1 ;
 int HFI_VIDEO_CODEC_MPEG2 ;
 int HFI_VIDEO_CODEC_MPEG4 ;
 int HFI_VIDEO_CODEC_VC1 ;
 int HFI_VIDEO_CODEC_VP8 ;
 int HFI_VIDEO_CODEC_VP9 ;
__attribute__((used)) static u32 to_codec_type(u32 pixfmt)
{
 switch (pixfmt) {
 case 138:
 case 137:
  return HFI_VIDEO_CODEC_H264;
 case 139:
  return HFI_VIDEO_CODEC_H263;
 case 135:
  return HFI_VIDEO_CODEC_MPEG1;
 case 134:
  return HFI_VIDEO_CODEC_MPEG2;
 case 133:
  return HFI_VIDEO_CODEC_MPEG4;
 case 132:
 case 131:
  return HFI_VIDEO_CODEC_VC1;
 case 130:
  return HFI_VIDEO_CODEC_VP8;
 case 129:
  return HFI_VIDEO_CODEC_VP9;
 case 128:
  return HFI_VIDEO_CODEC_DIVX;
 case 136:
  return HFI_VIDEO_CODEC_HEVC;
 default:
  return 0;
 }
}
