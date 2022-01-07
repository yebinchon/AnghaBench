
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_h264_inst {int dummy; } ;
 int mtk_vcodec_debug (struct venc_h264_inst*,char*,unsigned int) ;
 int mtk_vcodec_err (struct venc_h264_inst*,char*) ;

__attribute__((used)) static unsigned int h264_get_level(struct venc_h264_inst *inst,
       unsigned int level)
{
 switch (level) {
 case 141:
  mtk_vcodec_err(inst, "unsupported 1B");
  return 0;
 case 140:
  return 10;
 case 139:
  return 11;
 case 138:
  return 12;
 case 137:
  return 13;
 case 136:
  return 20;
 case 135:
  return 21;
 case 134:
  return 22;
 case 133:
  return 30;
 case 132:
  return 31;
 case 131:
  return 32;
 case 130:
  return 40;
 case 129:
  return 41;
 case 128:
  return 42;
 default:
  mtk_vcodec_debug(inst, "unsupported level %d", level);
  return 31;
 }
}
