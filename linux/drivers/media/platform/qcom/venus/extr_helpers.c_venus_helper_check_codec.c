
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int session_type; struct venus_core* core; } ;
struct venus_core {int enc_codecs; int dec_codecs; } ;


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
 int VIDC_SESSION_TYPE_DEC ;
 int VIDC_SESSION_TYPE_ENC ;

bool venus_helper_check_codec(struct venus_inst *inst, u32 v4l2_pixfmt)
{
 struct venus_core *core = inst->core;
 u32 session_type = inst->session_type;
 u32 codec;

 switch (v4l2_pixfmt) {
 case 137:
  codec = HFI_VIDEO_CODEC_H264;
  break;
 case 138:
  codec = HFI_VIDEO_CODEC_H263;
  break;
 case 135:
  codec = HFI_VIDEO_CODEC_MPEG1;
  break;
 case 134:
  codec = HFI_VIDEO_CODEC_MPEG2;
  break;
 case 133:
  codec = HFI_VIDEO_CODEC_MPEG4;
  break;
 case 132:
 case 131:
  codec = HFI_VIDEO_CODEC_VC1;
  break;
 case 130:
  codec = HFI_VIDEO_CODEC_VP8;
  break;
 case 129:
  codec = HFI_VIDEO_CODEC_VP9;
  break;
 case 128:
  codec = HFI_VIDEO_CODEC_DIVX;
  break;
 case 136:
  codec = HFI_VIDEO_CODEC_HEVC;
  break;
 default:
  return 0;
 }

 if (session_type == VIDC_SESSION_TYPE_ENC && core->enc_codecs & codec)
  return 1;

 if (session_type == VIDC_SESSION_TYPE_DEC && core->dec_codecs & codec)
  return 1;

 return 0;
}
