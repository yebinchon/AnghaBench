
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_h264_inst {TYPE_1__* vsi; } ;
typedef enum vdec_get_param_type { ____Placeholder_vdec_get_param_type } vdec_get_param_type ;
struct TYPE_2__ {int list_free; int list_disp; } ;


 int EINVAL ;





 int get_crop_info (struct vdec_h264_inst*,void*) ;
 int get_dpb_size (struct vdec_h264_inst*,void*) ;
 int get_pic_info (struct vdec_h264_inst*,void*) ;
 int mtk_vcodec_err (struct vdec_h264_inst*,char*,int) ;
 int vdec_h264_get_fb (struct vdec_h264_inst*,int *,int,void*) ;

__attribute__((used)) static int vdec_h264_get_param(void *h_vdec, enum vdec_get_param_type type,
          void *out)
{
 struct vdec_h264_inst *inst = (struct vdec_h264_inst *)h_vdec;

 switch (type) {
 case 131:
  vdec_h264_get_fb(inst, &inst->vsi->list_disp, 1, out);
  break;

 case 129:
  vdec_h264_get_fb(inst, &inst->vsi->list_free, 0, out);
  break;

 case 128:
  get_pic_info(inst, out);
  break;

 case 130:
  get_dpb_size(inst, out);
  break;

 case 132:
  get_crop_info(inst, out);
  break;

 default:
  mtk_vcodec_err(inst, "invalid get parameter type=%d", type);
  return -EINVAL;
 }

 return 0;
}
