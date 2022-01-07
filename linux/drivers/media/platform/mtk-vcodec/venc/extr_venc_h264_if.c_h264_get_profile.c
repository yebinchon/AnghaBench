
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_h264_inst {int dummy; } ;







 int mtk_vcodec_debug (struct venc_h264_inst*,char*,unsigned int) ;
 int mtk_vcodec_err (struct venc_h264_inst*,char*) ;

__attribute__((used)) static unsigned int h264_get_profile(struct venc_h264_inst *inst,
         unsigned int profile)
{
 switch (profile) {
 case 132:
  return 66;
 case 128:
  return 77;
 case 129:
  return 100;
 case 131:
  mtk_vcodec_err(inst, "unsupported CONSTRAINED_BASELINE");
  return 0;
 case 130:
  mtk_vcodec_err(inst, "unsupported EXTENDED");
  return 0;
 default:
  mtk_vcodec_debug(inst, "unsupported profile %d", profile);
  return 100;
 }
}
