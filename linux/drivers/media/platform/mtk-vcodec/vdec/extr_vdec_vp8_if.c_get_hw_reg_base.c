
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* hwb; void* ld; void* misc; void* sys; void* hwd; void* cm; void* top; } ;
struct vdec_vp8_inst {int ctx; TYPE_1__ reg_base; } ;


 int VDEC_CM ;
 int VDEC_HWB ;
 int VDEC_HWD ;
 int VDEC_LD ;
 int VDEC_MISC ;
 int VDEC_SYS ;
 int VDEC_TOP ;
 void* mtk_vcodec_get_reg_addr (int ,int ) ;

__attribute__((used)) static void get_hw_reg_base(struct vdec_vp8_inst *inst)
{
 inst->reg_base.top = mtk_vcodec_get_reg_addr(inst->ctx, VDEC_TOP);
 inst->reg_base.cm = mtk_vcodec_get_reg_addr(inst->ctx, VDEC_CM);
 inst->reg_base.hwd = mtk_vcodec_get_reg_addr(inst->ctx, VDEC_HWD);
 inst->reg_base.sys = mtk_vcodec_get_reg_addr(inst->ctx, VDEC_SYS);
 inst->reg_base.misc = mtk_vcodec_get_reg_addr(inst->ctx, VDEC_MISC);
 inst->reg_base.ld = mtk_vcodec_get_reg_addr(inst->ctx, VDEC_LD);
 inst->reg_base.hwb = mtk_vcodec_get_reg_addr(inst->ctx, VDEC_HWB);
}
