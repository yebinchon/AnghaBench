
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vp9_inst {int dummy; } ;
typedef enum vdec_get_param_type { ____Placeholder_vdec_get_param_type } vdec_get_param_type ;


 int EINVAL ;





 unsigned int MAX_VP9_DPB_SIZE ;
 int get_crop_info (struct vdec_vp9_inst*,void*) ;
 int get_disp_fb (struct vdec_vp9_inst*,void*) ;
 int get_free_fb (struct vdec_vp9_inst*,void*) ;
 int get_pic_info (struct vdec_vp9_inst*,void*) ;
 int mtk_vcodec_err (struct vdec_vp9_inst*,char*,int) ;

__attribute__((used)) static int vdec_vp9_get_param(void *h_vdec, enum vdec_get_param_type type,
         void *out)
{
 struct vdec_vp9_inst *inst = (struct vdec_vp9_inst *)h_vdec;
 int ret = 0;

 switch (type) {
 case 131:
  get_disp_fb(inst, out);
  break;
 case 129:
  get_free_fb(inst, out);
  break;
 case 128:
  get_pic_info(inst, out);
  break;
 case 130:
  *((unsigned int *)out) = MAX_VP9_DPB_SIZE;
  break;
 case 132:
  get_crop_info(inst, out);
  break;
 default:
  mtk_vcodec_err(inst, "not supported param type %d", type);
  ret = -EINVAL;
  break;
 }

 return ret;
}
