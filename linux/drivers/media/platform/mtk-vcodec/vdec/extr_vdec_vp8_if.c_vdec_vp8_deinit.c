
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vp8_inst {int vpu; } ;


 int free_working_buf (struct vdec_vp8_inst*) ;
 int kfree (struct vdec_vp8_inst*) ;
 int mtk_vcodec_debug_enter (struct vdec_vp8_inst*) ;
 int vpu_dec_deinit (int *) ;

__attribute__((used)) static void vdec_vp8_deinit(void *h_vdec)
{
 struct vdec_vp8_inst *inst = (struct vdec_vp8_inst *)h_vdec;

 mtk_vcodec_debug_enter(inst);

 vpu_dec_deinit(&inst->vpu);
 free_working_buf(inst);
 kfree(inst);
}
